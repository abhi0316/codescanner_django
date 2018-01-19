import MySQLdb as db
from django.shortcuts import render
from django.http import HttpResponse
#from models import barcode_status
update=False
def stop(request):
	if request.method == 'POST':
		f=open("/home/nest/nestui/tmp/stop.tmp",'w+')
		f.write("closr")
		f.close()
		return HttpResponse("stopped")
