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
            name='project_desc',
            field=models.TextField(max_length=50000),
            preserve_default=True,
        ),
    ]
