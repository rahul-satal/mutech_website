# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('mutech', '0011_auto_20150806_0145'),
    ]

    operations = [
        migrations.CreateModel(
            name='industrialproject',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('project_title', models.CharField(max_length=50)),
                ('project_image', models.ImageField(upload_to=b'Images/Project')),
                ('project_desc', models.TextField(max_length=50000)),
                ('project_price', models.IntegerField(default=2000)),
                ('project_pdf_link', models.CharField(default=b'https://docs.google.com/viewer?a=v&pid=sites&srcid=ZGVmYXVsdGRvbWFpbnxkcmNoaXRyYWRoYXdhbGV8Z3g6NDQzYzkwN2Y3YzY2ZWRjYw', max_length=200)),
            ],
            options={
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='studentproject',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('project_title', models.CharField(max_length=50)),
                ('project_image', models.ImageField(upload_to=b'Images/Project')),
                ('project_desc', models.TextField(max_length=50000)),
                ('project_duration', models.CharField(default=b'2 Weeks', max_length=50)),
                ('project_price', models.IntegerField(default=2000)),
                ('project_pdf_link', models.CharField(default=b'https://docs.google.com/viewer?a=v&pid=sites&srcid=ZGVmYXVsdGRvbWFpbnxkcmNoaXRyYWRoYXdhbGV8Z3g6NDQzYzkwN2Y3YzY2ZWRjYw', max_length=200)),
                ('project_branch', models.ForeignKey(to='mutech.branch')),
            ],
            options={
            },
            bases=(models.Model,),
        ),
        migrations.RemoveField(
            model_name='project',
            name='project_branch',
        ),
        migrations.RemoveField(
            model_name='project',
            name='project_subbranch',
        ),
        migrations.DeleteModel(
            name='project',
        ),
        migrations.RemoveField(
            model_name='subbranch',
            name='parentbranch',
        ),
        migrations.DeleteModel(
            name='subbranch',
        ),
        migrations.RemoveField(
            model_name='slider',
            name='slider_image5',
        ),
        migrations.RemoveField(
            model_name='slider',
            name='slider_image6',
        ),
        migrations.RemoveField(
            model_name='slider',
            name='slider_image7',
        ),
        migrations.RemoveField(
            model_name='slider',
            name='slider_image8',
        ),
    ]
