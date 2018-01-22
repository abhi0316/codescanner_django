import numpy as np
import RPi.GPIO as GPIO
import time
"algorithm for barcode scanning"
GPIO.setmode(GPIO.BCM)
GPIO.setup(4,GPIO.OUT)
import MySQLdb as db
import serial,os
conn = db.connect(host="localhost" ,port=3306,user='root',passwd='Resnova123!',db='NEST_STATION_1')
cursor = conn.cursor()
user_name = '0'
boardid = '0'
error_array=[]
opt_array=[]
init_array=[]
farray=[]
pansz=0
backarray=[]


STATUS=['ERROR:CONNECT SCANNER','INFO:PROCESS RUNNING','INFO:PROCESS STOPPED','ERROR:ERROR IN BOARD ID','ERROR:ERROR IN FILE UPLOADED ,ERROR NOT MATCHING WITH BOARDID','ERROR:NO VALUE GOT FROM DATABASE CHECK DB AND RESTART THE PROGRAM','ERROR:ORDER MULTIPLE GOT IS 0']


def init():               # function for initialization of the process fetching values from user
	if os.path.isdir('/tmp/stop'):
                        print "init from stop file"
                        os.system('rm -rf /tmp/stop')
 	global backarray,user_name,boardid,error_array,init_array,farray,opt_array,error_array
	print "Hi i'am on init"
	error_array=[]
	opt_array=[]
	init_array=[]
	farray=[]
	backarray=[]
	cursor.execute ("select name , boardid from status_initiate") # user name and batchid entered by user which is saved on a database:
	init_val=cursor.fetchall()
	print init_val
	for i in init_val:
		user_name,boardid=i[0],i[1]
	print user_name,boardid
	cursor.execute("select error from errordb") # error file updated is entered into a database
	error_val = cursor.fetchall()
	if error_val:
		for i in error_val:
			 error_array.append(i[0])
		error_array=sorted(error_array)
		cursor.execute ("truncate errordb")
	cursor.execute ("truncate status_initiate")
	conn.commit()
	fetch_nestdb(boardid)	

def fetch_nestdb(batchid): # function to fetch values from NESTDB
	global init_array,opt_array,pansz,error_array
	conn2=db.connect(host="localhost" ,port=3306,user='root',passwd='Resnova123!',db='NESTDB')
	cursor2=conn2.cursor()
	try:
		cursor2.execute("select boardid from BoardsTable where batchid='%s'" %(batchid))
		array=cursor2.fetchall()
		#print 'array is ', array
		for i in array:
			init_array.append(i[0])
		print "boardid>>" , init_array
	except:
		status_Update(STATUS[5])
	try:
		cursor2.execute("select ItemId from BoardsTable where batchid='%s'" %(batchid))
		itemId=cursor2.fetchone()
		print "itemId>>" , itemId[0]
	except:
		status_Update(STATUS[6])
	try:
		cursor2.execute ("select ordermultiple from ItemsTable where ItemId='%s'" %itemId[0])
		panelsize = cursor2.fetchone()
		pansz=panelsize[0]
		print "pannelsize",pansz
	except:
		status_Update(STATUS[5])
		return
	init_array=np.array(init_array)
	print init_array
	opt_array=np.array(init_array)
	padendzero()
	if error_array:
		inserror(error_array)
	print "entering serial code"
	serialpgm()

def gpioout(): # Relay code:
		print "onrelay loop"
		GPIO.output(4,True)
                time.sleep(4)
                GPIO.output(4,False)
                time.sleep(4)
                


def NestDbInsert(boardid): # Output database:
		global user_name
		conn_write=db.connect(host="localhost" ,port=3306,user='root',passwd='Resnova123!',db='NESTDB')
		sqlquery='insert into bayout(name,boardid) values ("%s","%s")' %(user_name,boardid)
		cursor_write=conn_write.cursor()
		try:
	
			cursor_write.execute(sqlquery)
			conn_write.commit()
			print "wrote to db"
		except:
			print "error_db"

def status_Update(value): # ui listening on this db for status
	cursor.execute("truncate status")
	val = cursor.execute("insert into status (status) value ('%s')" %value) 
	conn.commit()

def padendzero(): 
	global init_array,pansz,farray
	print "pansz is ", pansz
	if init_array.size%pansz != 0 :
		for i in range (0,abs(init_array.size%pansz - pansz)):
			init_array=np.insert(init_array,init_array.size,0)
	farray=np.resize(init_array,(init_array.size/pansz , pansz))
	farray=np.array(farray)
	print "new array",farray
	print "init_array", init_array
	return init_array
	

def search(read): # searching for barcode in array:
	global backarray,pansz
	try:
		read =read.strip()
		points = np.argwhere(farray == read)
		print points
		outarray = farray[points[0][0]]
		print "outarray is",outarray
		val=str(outarray)
		val=val.replace("'","")
		nval = "READ :"+val
		print str(nval)
		status_Update(str(nval))
		if len(outarray) != 0:
                        print "setting relay"
			gpioout()
		print "backarray is",backarray
		for i in outarray:
				if i in backarray and i != '0':
					#var = pansz+1
					#if i in backarray[var:-1]:
					return
				else:
					NestDbInsert(i)
					backarray.append(i)
					
					
		
	except:
		print "could not read"
		pass
	
def inserror(errorarray): # error insertion from database:
	global opt_array,farray
	global init_array
	try:
		for i in range (0,len(errorarray)):
			pos = int(np.argwhere(init_array == errorarray[i])) + 1 
			if pos%pansz != 0:
				for z in range(0,abs(pos%pansz-pansz)):
					opt_array = np.insert(opt_array,pos,0)
					init_array=opt_array
				init_array = padendzero()
	except:
		status_Update(STATUS[4])
	farray=np.resize(init_array,(init_array.size/pansz , pansz))

def serialpgm(): # scanner read function 
	try :
                bar_serial=serial.Serial('/dev/ttyACM0',timeout=0)
        except:
		print "Scanner not connected"
                status_Update(STATUS[0])
                

        while True:
		if os.path.isdir('/tmp/stop'):
			print "init from stop file"
                	os.system('rm -rf /tmp/stop')
                	return

                read=bar_serial.readline()
                if read:
			print read
			search(read)

while True:
	if os.path.isdir('/tmp/start'):
		print "init from start file"
		os.system('rm -rf /tmp/start')
		init()
