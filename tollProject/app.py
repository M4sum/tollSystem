from flask import Flask, render_template,flash, redirect, url_for, session, request, logging
from data import Articles
from flask_mysqldb import MySQL
from wtforms import Form, StringField, PasswordField, validators
from passlib.hash import sha256_crypt
from functools import wraps
from werkzeug.utils import secure_filename
from flask_wtf import FlaskForm
from flask_wtf.file import FileField
from flask import send_file
from class_employee import Employee
from class_vehicle import Vehicle
from class_customer import Customer
from employeeui import transaction_main

#from username_rfid import username_rfid

app=Flask(__name__)

#mysql config
app.config['MYSQL_HOST']='127.0.0.1'
app.config['MYSQL_USER']='root'
app.config['MYSQL_PASSWORD']=''
app.config['MYSQL_DB']='toll'
app.config['MYSQL_CURSORCLASS']='DictCursor'

mysql = MySQL(app)

#Index
@app.route('/', methods=['GET', 'POST'])
def index():
    return render_template('home.html')

#Querry
@app.route('/querry', methods=['GET', 'POST'])
def querry():
    if request.method=='POST':
        query=request.form['querry']
        cur = mysql.connection.cursor()
        print(query)
        cur.execute(query)
        result=cur.fetchall()
        cur.close()
        return render_template('querry.html',result=result, len=len(result))
    return render_template('querry.html',result=0, len=0)

#About
@app.route('/about')
def about():
    return render_template('about.html')

def is_loggedin(f):
    @wraps(f)
    def wrap(*args,**kwargs):
        if 'logged_in' in session:
            return f(*args,**kwargs)
        else:
            flash('Unautorized, Please log in', 'danger')
            return redirect(url_for('login'))
    return wrap


#logout
@app.route('/logout')
@is_loggedin
def logout():
    session.clear()
    flash('You are now logged out', 'success')
    return redirect(url_for('login'))

class temp:
    var=None
t=temp()

#Login
@app.route('/login', methods=['GET','POST'])
def login():
    if request.method=='POST':
        eId=request.form['id']
        password_candidate=request.form['password']
        t.var=eId
        cur = mysql.connection.cursor()
        result = cur.execute(
            'SELECT * FROM employee_login WHERE employee_id = %s', [eId])
        if result>0:
            data = cur.fetchone()
            password=data['password']
            if password_candidate==password:
                session['logged_in'] = True
                session['id'] = eId
                flash('You are now logged in', 'success')
                return redirect(url_for('portal'))
            else:
                error = 'Invalid Password'
                return render_template('login.html', error=error)
            
            cur.close()

        else:
            error = 'Id Not Found'
            return render_template('login.html', error = error)

    return render_template('login.html')


#Portal
@app.route('/portal', methods=['GET','POST'])
@is_loggedin
def portal():

    if request.method=='POST':

        rfid= request.form['rfid']
        fairtype = request.form['ftype']

        print(t.var)
        employee=Employee(t.var) 
        fair = transaction_main(rfid,employee,fairtype)
        cur = mysql.connection.cursor()

        cur.execute("SELECT vehicle_no FROM vehicle_details WHERE RFID = %s", (rfid,)) #querry for vehicle no.
        vNo = cur.fetchall()
        cur.execute("SELECT owner_name FROM owner_details WHERE username = (SELECT username FROM vehicle_details WHERE RFID = %s) ", (rfid,)) # owner name
        oName = cur.fetchall()
        cur.execute("SELECT %s FROM rate where toll_id = %s",(fair,employee.toll_id)) # rate deducted
        rate = cur.fetchone()
        cur.close()


        if vNo!='\0' and oName!='\0' and fair!=0:
            return render_template('portal.html', vno=vNo[0], oname=oName[0], rate=rate)

        elif fair==0:
            flash('Insufficient balance','danger')
            return render_template('portal.html', vno=0, oname=0, rate=0)
        
        else :
            flash('Unregistered vehicle','danger')
            return render_template('portal.html', vno=0, oname=0, rate=0)

    return render_template('portal.html', vno=0, oname=0, rate=0)

#Dashboard
@app.route('/dashboard',methods=['GET','POST'])
def dashboard():
    cur = mysql.connection.cursor()
    #print(t.var)
    cur.execute('SELECT name FROM employee_details WHERE employee_id = %s', (t.var,))
    name=cur.fetchone()
    cur.close()
    if request.method=='POST':    

        cname = request.form['name']
        cur = mysql.connection.cursor()
        cur.execute('SELECT username from owner_details WHERE owner_name=%s',(cname,))
        uname=cur.fetchall()
        customer=Customer(uname[0]['username'])
        cur.execute('SELECT RFID from vehicle_details WHERE username=%s',(uname[0]['username'],))
        RFID=cur.fetchone()
        vehicle=Vehicle(RFID['RFID'])
        print(customer.contact_no)
        return render_template('dashboard.html', name=name['name'], oname=cname, cno=customer.contact_no, vno=vehicle.vehicle_no, balance=vehicle.balance)

    return render_template('dashboard.html', name=name['name'])

if __name__=='__main__':
    app.secret_key='Sm9obiBTY2hyb20ga2lja3MgYXNz'
    app.run(debug='true')