# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('mutech', '0001_initial'),
    ]

    operations = [
        migrations.DeleteModel(
            name='aboutus',
        ),
        migrations.DeleteModel(
            name='contactus',
        ),
        migrations.DeleteModel(
            name='industrialproject',
        ),
        migrations.DeleteModel(
            name='product',
        ),
        migrations.DeleteModel(
            name='recentproject',
        ),
        migrations.DeleteModel(
            name='slider',
        ),
        migrations.RemoveField(
            model_name='studentproject',
            name='project_branch',
        ),
        migrations.DeleteModel(
            name='branch',
        ),
        migrations.DeleteModel(
            name='studentproject',
        ),
        migrations.DeleteModel(
            name='training',
        ),
    ]
