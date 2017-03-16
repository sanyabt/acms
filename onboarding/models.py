from django.db import models


from __future__ import unicode_literals


class Table1(models.Model):
    locker_id = models.IntegerField(primary_key=True)
    locker_name = models.CharField(db_column='Locker_name', max_length=45, blank=True, null=True)  # Field name made lowercase.
    city = models.CharField(max_length=45, blank=True, null=True)
    state = models.CharField(max_length=45, blank=True, null=True)
    pincode = models.CharField(max_length=45, blank=True, null=True)
    prime_capacity = models.CharField(max_length=45, blank=True, null=True)
    standard_capacity = models.CharField(max_length=45, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'table1'

"""
class Post(models.Model):
    #locker_id = models.IntegerField(primary_key=True,default=1,auto_created=True)
    locker_name = models.CharField(max_length=200)
    city = models.TextField()
    state = models.TextField()
    Pincode = models.TextField()
    capacity = models.IntegerField(default=100)
    ratio = models.FloatField()

"""
"""
   def publish(self):
        self.published_date = timezone.now()
        self.save()

    def __str__(self):
        return self.title
"""

"""


class Post2(models.Model):
    key = models.IntegerField(primary_key=True,auto_created=True,default=1)
    #locker_id = models.ForeignKey('auth.User')
    locker_id = models.OneToOneField(Post,on_delete=models.CASCADE,default=1,unique=True)
    empty_slots_prime = models.IntegerField(default=50)
    empty_slots_std = models.IntegerField(default=50)
    #Post.ratio = float(empty_slots_prime/empty_slots_std)

    def calculateratio(self):
        Post.ratio = self.empty_slots_prime/self.empty_slots_std
        Post.save()
"""