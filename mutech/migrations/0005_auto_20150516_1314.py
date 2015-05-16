# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('mutech', '0004_auto_20150515_1624'),
    ]

    operations = [
        migrations.DeleteModel(
            name='profilePic',
        ),
        migrations.RemoveField(
            model_name='product',
            name='product_duration',
        ),
        migrations.RemoveField(
            model_name='slider',
            name='slider_image10',
        ),
        migrations.RemoveField(
            model_name='slider',
            name='slider_image9',
        ),
        migrations.AddField(
            model_name='project',
            name='project_price',
            field=models.IntegerField(default=2000),
            preserve_default=True,
        ),
        migrations.AddField(
            model_name='training',
            name='training_price',
            field=models.IntegerField(default=2000),
            preserve_default=True,
        ),
        migrations.AlterField(
            model_name='project',
            name='project_duration',
            field=models.CharField(default=b'2 Weeks', max_length=50),
            preserve_default=True,
        ),
    ]
