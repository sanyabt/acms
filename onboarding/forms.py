from django import forms #django already has a class called forms

from .models import Table1
from django.contrib.auth.models import User

class PostForm(forms.ModelForm):

    class Meta:
        model = Table1 #will follow the Post Model
        fields = ('locker_id','locker_name','city','state','pincode','locker_capacity','ratio')


"""
class PostForm2(forms.ModelForm):

    class Meta:
        model = Post2 #will follow the Post Model
        fields = ('locker_id','empty_slots_prime','empty_slots_std')

"""

class UserForm(forms.ModelForm):
    password=forms.CharField(widget=forms.PasswordInput)
    class Meta:
        model=User
        fields=['username','email','password']
