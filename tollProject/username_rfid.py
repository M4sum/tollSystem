import pymysql


def username_rfid(rfid):
    conn=pymysql.connect(host="127.0.0.1",user="root",password="",db="toll")
    cur=conn.cursor()
    cur.execute("""
        select username
        from vehicle_details
        where rfid="""+str(rfid))
    username=cur.fetchone()
    cur.close()
    conn.close()
    return username[0]

