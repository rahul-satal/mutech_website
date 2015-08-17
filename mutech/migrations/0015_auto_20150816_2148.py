# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('mutech', '0014_recentproject'),
    ]

    operations = [
        migrations.CreateModel(
            name='ourteam',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('employee_name', models.CharField(max_length=50)),
                ('employee_image', models.ImageField(upload_to=b'Images/Ourteam')),
                ('employee_jobtitle', models.CharField(max_length=50)),
            ],
        ),
        migrations.RemoveField(
            model_name='aboutus',
            name='team1_image',
        ),
        migrations.RemoveField(
            model_name='aboutus',
            name='team2_image',
        ),
        migrations.RemoveField(
            model_name='aboutus',
            name='team3_image',
        ),
    ]
