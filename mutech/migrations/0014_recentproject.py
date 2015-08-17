# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('mutech', '0013_auto_20150815_1653'),
    ]

    operations = [
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
    ]
