import pymysql

class Toll:
    def __init__(self,toll_id):
        self.toll_id=toll_id
        conn=pymysql.connect(host="127.0.0.1",user="root",password="",db="toll")
        cur=conn.cursor()
        cur.execute("""
            select address,lanes
            from toll_details
            where toll_id="""+str(self.toll_id)
        )
        data=cur.fetchone()
        self.address=data[0]
        self.lanes=data[1]
        cur.execute("""
            select toll_balance
            from toll_passbook
            where toll_id=
        """+str(self.toll_id))
        d=cur.fetchone()
        cur.close()
        #print(d)
        self.balance=d[0]
        conn.close()
    
    def printinfo(self):
        print("toll_id "+str(self.toll_id))
        print("balance "+str(self.balance))
        print("lanes "+str(self.lanes))
        print("address "+self.address)

    def onUpdate(self):
        conn=pymysql.connect(host="127.0.0.1",user="root",password="",db="toll")
        cur=conn.cursor()
        cur.execute("""
            update toll_passbook
            set toll_balance="""+str(self.balance)+"""
            where toll_id="""+str(self.toll_id))
        conn.commit()
        cur.close()
        conn.close()


