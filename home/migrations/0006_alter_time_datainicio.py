# Generated by Django 3.2.5 on 2021-09-08 11:29

import datetime
from django.db import migrations, models
from django.utils.timezone import utc


class Migration(migrations.Migration):

    dependencies = [
        ('home', '0005_auto_20210824_0813'),
    ]

    operations = [
        migrations.AlterField(
            model_name='time',
            name='dataInicio',
            field=models.DateTimeField(default=datetime.datetime(2021, 9, 8, 11, 29, 21, 337291, tzinfo=utc)),
        ),
    ]
