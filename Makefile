Database:
	@echo "\033[92mRunning Make ..\033[0m"
	sudo apt update
	sudo apt install mysql-server
	sudo apt install mysql-client
	$(MAKE) Install

Init:
	@python settup.py
	@echo  @echo "\033[92mCreated Database\033[0m"
	$(MAKE) Update
Update:
	mysql -u root -p < Dbdump/nest_station_1.sql
	mysql -u root -p < Dbdump/nestdb.sql
	@echo "\033Info: Make complete run sudo systemctl enable $(CURDIR)/pythonserver.service && sudo systemcl enable $(CURDIR)/django.service \033[0m"

Install:
	sudo apt install python-django
	sudo apt install python-MySQLdb
	sudo apt install python-numpy
	$ (MAKE) Init
