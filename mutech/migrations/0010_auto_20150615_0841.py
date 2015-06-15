# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('mutech', '0009_remove_training_training_image'),
    ]

    operations = [
        migrations.AlterField(
            model_name='project',
            name='project_subbranch',
            field=models.ForeignKey(to='mutech.subbranch', blank=True),
            preserve_default=True,
        ),
    ]
