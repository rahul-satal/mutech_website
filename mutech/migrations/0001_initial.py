# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations
import django.core.validators


class Migration(migrations.Migration):

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='aboutus',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('aboutus_title', models.CharField(max_length=50)),
                ('aboutus_desc_paragraph1', models.TextField(default=b'first paragraph', max_length=5000)),
                ('aboutus_desc_paragraph2', models.TextField(default=b'second paragraph', max_length=5000)),
                ('aboutus_image', models.ImageField(upload_to=b'Images/Aboutus')),
            ],
        ),
        migrations.CreateModel(
            name='branch',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('branch_title', models.CharField(max_length=50)),
            ],
        ),
        migrations.CreateModel(
            name='contactus',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('fname', models.CharField(max_length=50)),
                ('subject', models.CharField(max_length=50)),
                ('email', models.EmailField(max_length=50)),
                ('phone_no', models.IntegerField(blank=True, validators=[django.core.validators.RegexValidator(regex=b'^.{10}$', message=b'Mobile no has to be 10 digits long', code=b'nomatch')])),
                ('message', models.TextField(max_length=5000)),
            ],
        ),
        migrations.CreateModel(
            name='industrialproject',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('project_title', models.CharField(max_length=50)),
                ('project_image', models.ImageField(upload_to=b'Images/IndustrialProject')),
                ('project_desc', models.TextField(max_length=50000)),
                ('project_price', models.IntegerField(default=2000)),
                ('project_pdf_link', models.CharField(default=b'https://docs.google.com/viewer?a=v&pid=sites&srcid=ZGVmYXVsdGRvbWFpbnxkcmNoaXRyYWRoYXdhbGV8Z3g6NDQzYzkwN2Y3YzY2ZWRjYw', max_length=200)),
            ],
        ),
        migrations.CreateModel(
            name='ourteam',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('employee_name', models.CharField(max_length=50)),
                ('employee_image', models.ImageField(upload_to=b'Images/Ourteam')),
                ('employee_jobtitle', models.CharField(max_length=50)),
            ],
        ),
        migrations.CreateModel(
            name='recentproject',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('project_title', models.CharField(max_length=50)),
                ('project_image', models.ImageField(upload_to=b'Images/RecentProject')),
                ('project_desc', models.TextField(max_length=50000)),
                ('project_price', models.IntegerField(default=2000)),
                ('project_pdf_link', models.CharField(default=b'https://docs.google.com/viewer?a=v&pid=sites&srcid=ZGVmYXVsdGRvbWFpbnxkcmNoaXRyYWRoYXdhbGV8Z3g6NDQzYzkwN2Y3YzY2ZWRjYw', max_length=200)),
            ],
        ),
        migrations.CreateModel(
            name='slider',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('slider_title', models.CharField(max_length=50)),
                ('slider_image1', models.ImageField(upload_to=b'Images/Slider/')),
                ('slider_image2', models.ImageField(upload_to=b'Images/Slider/')),
                ('slider_image3', models.ImageField(upload_to=b'Images/Slider/')),
                ('slider_image4', models.ImageField(upload_to=b'Images/Slider/')),
            ],
        ),
        migrations.CreateModel(
            name='studentproject',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('project_title', models.CharField(max_length=50)),
                ('project_image', models.ImageField(upload_to=b'Images/StudentProject')),
                ('project_desc', models.TextField(max_length=5000)),
                ('project_duration', models.CharField(max_length=50)),
                ('project_pdf_link', models.CharField(default=b'https://docs.google.com/viewer?a=v&pid=sites&srcid=ZGVmYXVsdGRvbWFpbnxkcmNoaXRyYWRoYXdhbGV8Z3g6NDQzYzkwN2Y3YzY2ZWRjYw', max_length=200)),
                ('project_branch', models.ForeignKey(to='mutech.branch')),
            ],
        ),
        migrations.CreateModel(
            name='training',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('training_title', models.CharField(max_length=50)),
                ('training_desc', models.TextField(max_length=5000)),
                ('training_duration', models.CharField(default=b'2 Weeks', max_length=50)),
                ('training_pdf_link', models.CharField(default=b'https://docs.google.com/viewer?a=v&pid=sites&srcid=ZGVmYXVsdGRvbWFpbnxkcmNoaXRyYWRoYXdhbGV8Z3g6NDQzYzkwN2Y3YzY2ZWRjYw', max_length=200)),
                ('training_price', models.IntegerField(default=2000)),
            ],
        ),
        migrations.CreateModel(
            name='workshop',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('workshop_title', models.CharField(max_length=50)),
                ('workshop_desc', models.TextField(max_length=5000)),
                ('workshop_duration', models.CharField(default=b'2 Weeks', max_length=50)),
                ('workshop_pdf_link', models.CharField(default=b'https://docs.google.com/viewer?a=v&pid=sites&srcid=ZGVmYXVsdGRvbWFpbnxkcmNoaXRyYWRoYXdhbGV8Z3g6NDQzYzkwN2Y3YzY2ZWRjYw', max_length=200)),
                ('workshop_price', models.IntegerField(default=2000)),
            ],
        ),
    ]
