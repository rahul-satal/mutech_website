# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('mutech', '0007_auto_20150517_1004'),
    ]

    operations = [
        migrations.AlterField(
            model_name='contactus',
            name='phone_no',
            field=models.IntegerField(max_length=13),
            preserve_default=True,
        ),
    ]
