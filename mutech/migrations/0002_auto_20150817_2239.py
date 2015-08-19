# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('mutech', '0001_initial'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='training',
            name='training_price',
        ),
        migrations.RemoveField(
            model_name='workshop',
            name='workshop_price',
        ),
    ]
