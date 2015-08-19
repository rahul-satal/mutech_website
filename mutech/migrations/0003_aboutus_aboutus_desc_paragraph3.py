# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('mutech', '0002_auto_20150817_2239'),
    ]

    operations = [
        migrations.AddField(
            model_name='aboutus',
            name='aboutus_desc_paragraph3',
            field=models.TextField(default=b'third paragraph', max_length=5000),
        ),
    ]
