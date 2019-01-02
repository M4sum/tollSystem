import pymysql
from class_toll import Toll
import datetime


def updateTransaction(toll,fRate,rfid):
    conn=pymysql.connect(host="127.0.0.1",user="root",password="",db="toll")
    cur=conn.cursor()
    cur.execute("SELECT transaction_id FROM transaction ORDER BY transaction_id DESC LIMIT 1;")
    data=cur.fetchone()
    #print(data)
    transactionID=data[0]+1
    #print(transactionID)
    now=datetime.datetime.now()
    date=str(now.date().strftime("%m.%d.%y"))
    #date=date.replace('-','.')
    #print(date)
    cur.execute("insert into transaction values ({},{},{},{},'{}')".format(transactionID,rfid,toll.toll_id,fRate,date))
    conn.commit()
    #print(rfid, transactionID, fRate, toll.toll_id, date)
    cur.close()
    conn.close()
