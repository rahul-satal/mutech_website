# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


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
            name='article',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('article_title', models.CharField(max_length=50)),
                ('article_desc', models.TextField(max_length=20000)),
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
                ('lname', models.CharField(max_length=50)),
                ('email', models.EmailField(max_length=50)),
                ('phone_no', models.IntegerField(max_length=10)),
                ('message', models.TextField(max_length=5000)),
            ],
            options={
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='news',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('news_title', models.CharField(max_length=50)),
                ('news_desc', models.TextField(max_length=20000)),
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
                ('product_duration', models.CharField(max_length=50)),
            ],
            options={
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='profilePic',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('profilePic', models.ImageField(upload_to=b'images')),
            ],
            options={
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='project',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('project_title', models.CharField(max_length=50)),
                ('project_image', models.ImageField(upload_to=b'Images/Project')),
                ('project_desc', models.TextField(max_length=5000)),
                ('project_duration', models.CharField(max_length=50)),
                ('project_branch', models.ForeignKey(to='mutech.branch')),
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
                ('slider_image5', models.ImageField(upload_to=b'Images/Slider/')),
                ('slider_image6', models.ImageField(upload_to=b'Images/Slider/')),
                ('slider_image7', models.ImageField(upload_to=b'Images/Slider/')),
                ('slider_image8', models.ImageField(upload_to=b'Images/Slider/')),
                ('slider_image9', models.ImageField(upload_to=b'Images/Slider/')),
                ('slider_image10', models.ImageField(upload_to=b'Images/Slider/')),
            ],
            options={
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='subbranch',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('subbranch_title', models.CharField(max_length=50)),
                ('parentbranch', models.ForeignKey(to='mutech.branch')),
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
                ('training_image', models.ImageField(upload_to=b'Images/Training')),
                ('training_desc', models.TextField(max_length=5000)),
                ('training_duration', models.CharField(max_length=50)),
            ],
            options={
            },
            bases=(models.Model,),
        ),
        migrations.AddField(
            model_name='project',
            name='project_subbranch',
            field=models.ForeignKey(to='mutech.subbranch'),
            preserve_default=True,
        ),
    ]
