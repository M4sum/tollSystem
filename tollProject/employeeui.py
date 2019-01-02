from class_employee import Employee
from class_customer import Customer
from class_toll import Toll
from username_rfid import username_rfid
import pymysql
from updateTransaction import updateTransaction


def transaction_main(rfid,employee,faretype):
    customer=Customer(username_rfid(rfid))
    toll=Toll(employee.toll_id)
    #i=0
    conn=pymysql.connect(host="127.0.0.1",user="root",password="",db="toll")
    cur=conn.cursor()
    cur.execute("""
        select category 
        from vehicle_details
        where RFID="""+str(rfid))
    data=cur.fetchone()
    category=data[0]

    stringRate=category + '_' + faretype.upper()
    cur.close()
    conn.close()
    conn=pymysql.connect(host="127.0.0.1",user="root",password="",db="toll")
    cur=conn.cursor()
    cur.execute("""
        select {}
        from rate
        where toll_id=""".format(stringRate)+str(employee.toll_id))
    
    data=cur.fetchone()
    fRate=data[0]
    cur.close()
    #i=0
    cur=conn.cursor()
    cur.execute("select customer_balance from customer_passbook where rfid="+str(rfid))
    data=cur.fetchone()
    Amount=data[0]
    cur.close()
    conn.close()
    if(Amount>=fRate):
        #employee.transaction(customer,toll,fRate,rfid)
        #updateTransaction(toll,fRate,rfid)
        return fRate
    else:
        return fRate-fRate

#p=Employee(1)
#transaction_main(2,p,'O')


    




