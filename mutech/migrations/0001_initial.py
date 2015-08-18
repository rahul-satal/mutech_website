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
                ('aboutus_desc', models.TextField(max_length=5000)),
                ('aboutus_image', models.ImageField(upload_to=b'Images/Aboutus')),
                ('team1_image', models.ImageField(upload_to=b'Images/Aboutus')),
                ('team2_image', models.ImageField(upload_to=b'Images/Aboutus')),
                ('team3_image', models.ImageField(upload_to=b'Images/Aboutus')),
            ],
            options={
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='branch',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('branch_title', models.CharField(max_length=50)),
            ],
            options={
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='contactus',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('fname', models.CharField(max_length=50)),
                ('subject', models.CharField(max_length=50)),
                ('email', models.EmailField(max_length=50)),
                ('phone_no', models.CharField(blank=True, max_length=15, validators=[django.core.validators.RegexValidator(regex=b'^\\+?1?\\d{9,15}$', message=b"Phone number must be entered in the format: '+999999999'. Up to 15 digits allowed.")])),
                ('message', models.TextField(max_length=5000)),
            ],
            options={
            },
            bases=(models.Model,),
        ),
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
            name='product',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('product_title', models.CharField(max_length=50)),
                ('product_image', models.ImageField(upload_to=b'Images/Product')),
                ('product_desc', models.TextField(max_length=5000)),
                ('product_stock', models.BooleanField(default=True)),
                ('product_price', models.IntegerField(default=2000)),
                ('product_pdf_link', models.CharField(default=b'https://docs.google.com/viewer?a=v&pid=sites&srcid=ZGVmYXVsdGRvbWFpbnxkcmNoaXRyYWRoYXdhbGV8Z3g6NDQzYzkwN2Y3YzY2ZWRjYw', max_length=200)),
            ],
            options={
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='recentproject',
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
            name='slider',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('slider_title', models.CharField(max_length=50)),
                ('slider_image1', models.ImageField(upload_to=b'Images/Slider/')),
                ('slider_image2', models.ImageField(upload_to=b'Images/Slider/')),
                ('slider_image3', models.ImageField(upload_to=b'Images/Slider/')),
                ('slider_image4', models.ImageField(upload_to=b'Images/Slider/')),
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
            options={
            },
            bases=(models.Model,),
        ),
    ]
