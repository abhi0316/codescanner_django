import MySQLdb as db
conn = db.connect(host='localhost',port=3306 , user='root',passwd='Resnova123!')
try:
	cursor=conn.cursor()
	cursor.execute("create database NEST_STATION_1")
	conn.commit()
	cursor.execute("create database NESTDB")
	conn.commit()

except:
	print "Database alredy exist"

