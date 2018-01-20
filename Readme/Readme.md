# install Django 
~sudo apt install python-django
~copy nestui/ to raspberrypi
~set ip inside nestui/nestui/settings.py --> Allowed host['ip address']
~run application with ./manage.py runserver ip:port

# to start daemon * set the paths correctly
~sudo systemctl enable /home/nest/nestui/django.service
~sudo systemctl enable /home/nest/nestui/pythonserver.service
