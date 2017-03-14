# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Table1',
            fields=[
                ('locker_id', models.IntegerField(serialize=False, primary_key=True)),
                ('locker_name', models.CharField(max_length=45, null=True, db_column='Locker_name', blank=True)),
                ('city', models.CharField(max_length=45, null=True, blank=True)),
                ('state', models.CharField(max_length=45, null=True, blank=True)),
                ('pincode', models.CharField(max_length=45, null=True, blank=True)),
                ('locker_capacity', models.CharField(max_length=45, null=True, blank=True)),
            ],
            options={
                'db_table': 'table1',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Table2',
            fields=[
                ('key', models.AutoField(serialize=False, primary_key=True)),
                ('empty_slots', models.CharField(max_length=45, null=True, blank=True)),
                ('filler_slots', models.CharField(max_length=45, null=True, blank=True)),
                ('no_of_lockers', models.CharField(max_length=45, null=True, blank=True)),
                ('timestamp', models.DateTimeField()),
            ],
            options={
                'db_table': 'table2',
                'managed': False,
            },
        ),
    ]
