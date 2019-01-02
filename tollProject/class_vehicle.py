import pymysql

class Vehicle:
    def __init__(self,rfid):
        self.rfid=rfid
        conn=pymysql.connect(host="127.0.0.1",user="root",password="",db="toll")
        cur=conn.cursor()
        cur.execute("""
            select vehicle_no,model,category,username
            from vehicle_details
            where rfid ="""+str(rfid))
        data=cur.fetchone()
        #print(data)
        self.vehicle_no=data[0]
        self.model=data[1]
        self.category=data[2]
        self.username=data[3]
        cur.execute("""
            select customer_balance 
            from customer_passbook
            where rfid="""+str(rfid))
        data=cur.fetchone()
        self.balance=data[0]
        cur.close()
        conn.close()

    def printinfo(self):
        print("rfid "+str(self.rfid))
        print("vehicle_no "+str(self.vehicle_no))
        print("model "+self.model)
        print("category "+self.category)
        print("username "+self.username)
        print("balance "+str(self.balance))
    
    def onUpdate(self):
        conn=pymysql.connect(host="127.0.0.1",user="root",password="",db="toll")
        cur=conn.cursor()
        cur.execute("""
            update customer_passbook
            set customer_balance ="""+str(self.balance)+"""
            where rfid="""+str(self.rfid))
        conn.commit()
        cur.close()
        conn.close()
