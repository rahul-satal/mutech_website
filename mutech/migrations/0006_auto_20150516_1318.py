# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('mutech', '0005_auto_20150516_1314'),
    ]

    operations = [
        migrations.AlterField(
            model_name='training',
            name='training_duration',
            field=models.CharField(default=b'2 Weeks', max_length=50),
            preserve_default=True,
        ),
    ]
