from django.db import models

# Create your models here.
class barcode_status(models.Model):
	barcodes = models.CharField(max_length=255)

	def __str__(self):
	        return self.barcodes

	
class initiate(models.Model):
    name = models.CharField(max_length=100)
    boardid = models.CharField(max_length=100)


class error(models.Model):
	error = models.CharField(max_length=100)
	
