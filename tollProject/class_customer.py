import pymysql
from class_vehicle import Vehicle
class Customer:
    def __init__(self, username):
        conn=pymysql.connect(host="127.0.0.1",user="root",password="",db="toll")
        self.username=username
        abc=conn.cursor()
        abc.execute("""
            select owner_name,contact_no,email
            from owner_details
            where username='%s'

        """%(self.username))
        data=abc.fetchone()
        self.name=data[0]
        self.contact_no=data[1]
        self.email=data[2]
        abc.execute("""
            select password
            from owner_login
            where username='%s'
        
        """%(self.username))
        data=abc.fetchone()
        abc.close()
        self.password=data[0]
        self.vehiclelist = []
        conn.close()
        r=self.whoisowner()
        
        
        for i in range(len(r)):
            self.vehiclelist.append(Vehicle(int(r[i][0])))
        
        
    def whoisowner(self):
    
        conn=pymysql.connect(host="127.0.0.1",user="root",password="",db="toll")
        cur=conn.cursor()
        cur.execute("""
            select RFID 
            from vehicle_details
            where username="%s"
        """%(self.username))
        r=cur.fetchall()
        cur.close()
        conn.close()
        return r        


            
            
    def printinfo(self):
        print("username "+self.username)
        print("name "+self.name)
        print("contact no "+str(self.contact_no))
        print("email "+self.email)
        print("password "+self.password)

    def printvehicleinfo(self):
        for i in range(len(self.vehiclelist)):
            self.vehiclelist[i].printinfo()
    
    
    
    def dummy(self,rfid):
        i=0
        while(i<len(self.vehiclelist) and self.vehiclelist[i].rfid!=rfid):
            i+=1
        self.vehiclelist[i].printinfo()




        


