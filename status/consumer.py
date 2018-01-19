# consumeservice.py
# consumes a method in a service on the dbus

import dbus

bus = dbus.SessionBus()
helloservice = bus.get_object('org.nest.barcodeservice', '/org/nest/barcodeservice')
hello = helloservice.get_dbus_method('hello', 'org.nest.barcodeservice')
stoped = helloservice.get_dbus_method('stoped', 'org.nest.barcodeservice')
print hello()
print stoped()
