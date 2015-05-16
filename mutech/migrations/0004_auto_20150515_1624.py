# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('mutech', '0003_auto_20150515_1621'),
    ]

    operations = [
        migrations.AlterField(
            model_name='product',
            name='product_duration',
            field=models.CharField(default=b'2 months', max_length=50),
            preserve_default=True,
        ),
    ]
