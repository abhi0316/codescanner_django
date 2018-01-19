#! /bin/bash
cd /home/nest/nestui/
python /home/nest/nestui/manage.py runserver nest-barcode.local:8000 >> /var/log/nest/nodeserver.log 2>&1
