# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('lock', '0002_auto_20170109_1724'),
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
