# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey has `on_delete` set to the desired behavior.
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from __future__ import unicode_literals

from django.db import models

class Table1(models.Model):
    locker_id = models.IntegerField(primary_key=True)
    locker_name = models.CharField(db_column='Locker_name', max_length=45, blank=True, null=True)  # Field name made lowercase.
    city = models.CharField(max_length=45, blank=True, null=True)
    state = models.CharField(max_length=45, blank=True, null=True)
    pincode = models.CharField(max_length=45, blank=True, null=True)
    locker_capacity = models.CharField(max_length=45, blank=True, null=True)
    ratio = models.FloatField()

    class Meta:
        managed = False
        db_table = 'table1'

class Prime(models.Model):
    locker = models.ForeignKey('Table1', models.DO_NOTHING, primary_key=True)
    day0 = models.IntegerField(blank=True, null=True)
    day1 = models.IntegerField(blank=True, null=True)
    day2 = models.IntegerField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'prime'


class Standard(models.Model):
    locker = models.ForeignKey('Table1', models.DO_NOTHING, primary_key=True)
    day0 = models.IntegerField(blank=True, null=True)
    day1 = models.IntegerField(blank=True, null=True)
    day2 = models.IntegerField(blank=True, null=True)
    day3 = models.IntegerField(blank=True, null=True)
    day4 = models.IntegerField(blank=True, null=True)
    day5 = models.IntegerField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'standard'



