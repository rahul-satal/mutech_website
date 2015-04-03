# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('mutech', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='project',
            name='branch',
            field=models.ForeignKey(to='mutech.branch'),
            preserve_default=True,
        ),
    ]
