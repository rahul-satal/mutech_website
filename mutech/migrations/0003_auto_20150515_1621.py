# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('mutech', '0002_auto_20150515_1553'),
    ]

    operations = [
        migrations.AddField(
            model_name='product',
            name='product_price',
            field=models.IntegerField(default=2000),
            preserve_default=True,
        ),
        migrations.AddField(
            model_name='product',
            name='product_stock',
            field=models.BooleanField(default=True),
            preserve_default=True,
        ),
    ]
