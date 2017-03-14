# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('lock', '0004_auto_20170111_1348'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='table1',
            options={'managed': False},
        ),
        migrations.AlterModelOptions(
            name='table2',
            options={'managed': False},
        ),
    ]
