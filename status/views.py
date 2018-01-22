'''
Barcode ui django app view

Once user entered details on ui it is saved to database also a temp directory is created to start the application.status_intiate db 
is accessed by the sample.py code.

'''


import MySQLdb as db
from django.shortcuts import render
from django.http import HttpResponse
from models import barcode_status , error,initiate
from django.core.files.storage import FileSystemStorage
import os

file_path1 = "/tmp/start/" #making directory for starting ../sample.py program
file_path2 = "/tmp/stop/"  #making dirctory for stoping ../sample.py
directory1 = os.path.dirname(file_path1)
directory2 = os.path.dirname(file_path2)
running='0'
update='0'
status = barcode_status.objects.all()   
a=[]
from .forms import NameForm

conn=db.connect(host='localhost' , port=3306 , user='root',passwd='Resnova123!', db='NEST_STATION_1')
cursor=conn.cursor()
form = NameForm()

def databaseCheck(boardid): # check nestdatabase for validation of batchid:
	nestcn=db.connect(host='localhost' , port=3306 , user='root',passwd='Resnova123!', db='NESTDB')
	cursor_err = nestcn.cursor()
	cursor_err.execute("select * from BoardsTable where batchid='%s'" %boardid)
	return cursor_err.fetchall()

def dberrchk(boardid): # check nestdatabase for validation of error:
	nestcn=db.connect(host='localhost' , port=3306 , user='root',passwd='Resnova123!', db='NESTDB')
        cursor1 = nestcn.cursor()
        cursor1.execute("select batchid from BoardsTable where boardid='%s'" %boardid)
        return cursor1.fetchone()

	
def stop():
        f=open("/home/nest/nestui/tmp/stop.tmp",'w+')
        f.write("close")
        f.close()


def hello(request): # hello function responds to incoming http request from status.urls
	
	global update,form,a,running,runningupdate
	print update
	if request.method == 'POST' and not request.POST.get('stop'):
		a=[]
        	#form = NameForm(request.POST)
       		if request.POST.get('board_id') and request.POST.get('your_name'):
			conn=db.connect(host='localhost' , port=3306 , user='root',passwd='Resnova123!', db='NEST_STATION_1')
			cursor=conn.cursor()
			cursor.execute("truncate errordb")
			cursor.execute("truncate status")
			conn.commit()
			running = request.POST.get('board_id')
			print running
			result = databaseCheck(request.POST.get('board_id'))
			print result
			try:
				if request.FILES["myfile"]:
					print "file found"
					for i in request.FILES["myfile"].chunks():
					        a.append(i)
						
					a=a[0].split('\n')
					print a
					count = 0
					for i in range(0,len(a)):
					  	count = count+1
					  	print len(a[i])
					  	try:
					  		if a[i]:
								print "checking err db"
								errval = dberrchk(a[i].strip())
								print errval[0]
								print running.strip()
								if not errval:
									errorstr="ERROR: ON UPLOADED FILE IN LINE {}" .format(count)
									return render(request,"status.html",{ 'status': errorstr,'running': running })
								elif errval[0] == running.strip():   
									runningupdate="valid"
									connerr=db.connect(host='localhost' , port=3306 , user='root',passwd='Resnova123!', db='NEST_STATION_1')
									cursorerr=connerr.cursor()
									cursorerr.execute("insert into errordb(error) values('%s')" %a[i])
									connerr.commit()
									print "db updated"
								else:   
									runningupdate="notmatching"
									#return render(request,"status.html",{ 'status': 'ERROR:FILE AND BOARDID NOT MATCHING','running': running })
					
					  	except:
							print "Blank in file"
							runningupdate="notvalid"
				else:
					print "file not found"
			except:
				runningupdate = "valid"
				print "update not set"	
				pass
				#return render(request,"status.html",{ 'status': 'could not read errorfile','running': running })		
				
			print result	
			if result:
				update="valid"
                                init=initiate(name=request.POST.get('your_name'),boardid=request.POST.get('board_id'))
				init.save()
				try:
    					os.stat(directory1)
				except:
    					os.mkdir(directory1)
				if runningupdate == "valid":
					return render(request,"status.html",{ 'status': 'INFO:PROCESS STARTED','running': running })
				elif runningupdate == "notvalid":
					return render(request, "status.html",{'status':'ERROR:CHECK ERROR FILE'})
				elif runningupdate == "notmatching":
					return render(request, "status.html",{'status':'ERROR:FILE AND BATCHID VALUE NOT MATCHING'})				
				
			else:
				update="notvalid"
				return render(request,"status.html",{ 'status': 'ERROR:NO VALID RESULT' } )
		else:
			#form = NameForm()
			return render(request, 'name.html', {'form': form })
			#return render(request,"status.html", {'status': 'NO UPDATE'})		
			
	elif request.method == 'GET' and update == "valid":
			connstatus=db.connect(host='localhost' , port=3306 , user='root',passwd='Resnova123!', db='NEST_STATION_1')
			cursor_status=connstatus.cursor()
			cursor_status.execute ("select status from status where id=1")
			value=cursor_status.fetchone()
			connstatus.close()
			print value
			try:
				return render(request, "status.html",{'status':value[0], 'running': running})
			except:
				if update == "valid" :
					if  runningupdate == "notvalid":
						return render(request, "status.html",{'status':'ERROR:CHECK ERROR FILE'})
					elif runningupdate == "notmatching":
						return render(request, "status.html",{'status':'ERROR: FILE AND BOARDID VALUE NOT MATCHING'})
					else:
						return render(request, "status.html",{'status':'INFO:PROCESS STARTED', 'running': running})
				else:
					return render(request, "status.html",{'status':'NIL', 'running': 'NIL'})	
	
	elif request.method == 'GET' and update == "not valid":
				return render(request, "status.html",{'status':'NIL', 'running': 'NIL' })

	elif request.method == 'POST' and request.POST.get('stop'):
		try:
                	os.stat(directory2)
                except:
                	os.mkdir(directory2)

		return render(request, 'name.html', {'form': form })			
	elif request.method == 'GET':
		return render(request, 'name.html', {'form': form})

