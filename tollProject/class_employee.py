from flask import Flask
from flask_mysqldb import MySQL
from class_toll import Toll
from class_customer import Customer

app=Flask(__name__)

#mysql config
app.config['MYSQL_HOST']='127.0.0.1'
app.config['MYSQL_USER']='root'
app.config['MYSQL_PASSWORD']=''
app.config['MYSQL_DB']='toll'
app.config['MYSQL_CURSORCLASS']='DictCursor'

mysql = MySQL(app)

class Employee:


    def __init__(self, employee_id):
        self.employee_id=employee_id
        abc=mysql.connection.cursor()
        abc.execute("select name,salary,toll_id,contact_no from employee_details where employee_id="+str(employee_id))
        data=abc.fetchone()
        abc.close()
        #print(data["name"])
        self.name=data["name"]
        self.salary=data["salary"]
        self.toll_id=data["toll_id"]
        self.contact_no=data["contact_no"]
        abc=mysql.connection.cursor()
        abc.execute("select password from employee_login where employee_id="+str(employee_id))
        data=abc.fetchone()
        self.password=data["password"]
        abc.close()

    def printinfo(self):
        print("name {}".format(self.name))
        print("salary {}".format(self.salary))
        print("toll_id {}".format(self.toll_id))
        print("contact_no {}".format(self.contact_no))
        print("password {}".format(self.password))
    
    
    def transaction(self,customer,toll,fRate,rfid):
        toll.balance=toll.balance+fRate
        i=0
        #print(rfid)
        #print(len(customer.vehiclelist))
        while(i<len(customer.vehiclelist) and customer.vehiclelist[i].rfid!=rfid):
            i+=1
        #print(customer.vehiclelist[i-1].rfid)
        customer.vehiclelist[i-1].balance=customer.vehiclelist[i-1].balance-fRate
        """print(toll.balance)
        print(toll.toll_id)
        print(customer.vehiclelist[i-1].balance)
        print(customer.vehiclelist[i-1].rfid)"""
        #toll.onUpdate()
        #customer.vehiclelist[i].onUpdate()
#conn.close()
