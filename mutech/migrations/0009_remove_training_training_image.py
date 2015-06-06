# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('mutech', '0008_auto_20150530_0850'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='training',
            name='training_image',
        ),
    ]
