from django.shortcuts import render
from .models import Table1,prime,standard
from django.db.models import Q

# Create your views here.


def results(request):
	query = request.GET.get("p")
	qlist = prime.objects.all().select_related('locker').values('locker__locker_id','locker__city', 'locker__state','locker__pincode','day2')
	q1list = standard.objects.all().select_related('locker').values('locker__locker_id','locker__city', 'locker__state','locker__pincode','day5')
	#a=set()
	if query:
		qlist = qlist.filter(
		Q(locker__city=query)|
		Q(locker__state__icontains=query)|
		Q(locker__pincode__icontains=query)).distinct()
		q1list = q1list.filter(
		Q(locker__city=query)|
		Q(locker__state__icontains=query)|
		Q(locker__pincode__icontains=query)).distinct()


	#    obj = Table1.objects.filter(state=query)
	#        for o in obj:
	#            l=o.locker_id
	#            if Table2.objects.filter(locker=l).exclude(empty_slots='0'):
	#                a.add(o)
	return render(request, 'lock/results.html', {'query':query,'qlist':qlist, 'qlist':q1list})
