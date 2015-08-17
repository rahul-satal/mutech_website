# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('mutech', '0012_auto_20150815_1540'),
    ]

    operations = [
        migrations.DeleteModel(
            name='article',
        ),
        migrations.DeleteModel(
            name='news',
        ),
        migrations.RenameField(
            model_name='contactus',
            old_name='lname',
            new_name='subject',
        ),
    ]
