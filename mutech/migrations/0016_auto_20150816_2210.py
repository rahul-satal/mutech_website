# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('mutech', '0015_auto_20150816_2148'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='aboutus',
            name='aboutus_desc',
        ),
        migrations.AddField(
            model_name='aboutus',
            name='aboutus_desc_paragraph1',
            field=models.TextField(default=b'first paragraph', max_length=5000),
        ),
        migrations.AddField(
            model_name='aboutus',
            name='aboutus_desc_paragraph2',
            field=models.TextField(default=b'second paragraph', max_length=5000),
        ),
    ]
