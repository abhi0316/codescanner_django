# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('status', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='barcode_status',
            name='barcodes',
            field=models.CharField(max_length=255),
            preserve_default=True,
        ),
    ]
