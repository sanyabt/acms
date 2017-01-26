from django.shortcuts import render
from .models import *
from django.db.models import Q

# Create your views here.

def dashboard(request):
	obj2=''
	obj3=''
	q1 = request.GET.get("lname")
	q2 = request.GET.get("city")
	q3 = request.GET.get("state")
	q4 = request.GET.get("pincode")
	obj = Table1.objects.filter(
		Q(locker_name=q1)|
		Q(city=q2)|
		Q(state=q3)|
		Q(pincode=q4)).order_by('state')
	for ob in obj:
		for row in ob.table2_set.all():
			obj2 = row.empty_slots_prime
			obj3 = row.empty_slots_standard

	context = {
	"obj": obj,
	"obj2": obj2,
	"obj3": obj3,
	}
	return render(request, 'dashboard.html', context)
