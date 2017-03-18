from django.shortcuts import render
from .models import *
from django.db.models import Q
from datetime import date
from datetime import timedelta
from .forms import NewForm
# Create your views here.

def dashboard(request):
	form_class = NewForm

	if request.method == 'POST':
		form = form_class(data=request.POST)

		if form.is_valid():
			q1 = request.POST.get('locker_name')
			q2 = request.POST.get('city')
			q3 = request.POST.get('state')
			q4 = request.POST.get('pincode')
			use_date = form.cleaned_data['user_date']

			date_now = date.today()
			date_1 = date_now + timedelta(days=1)
			date_2 = date_now + timedelta(days=2)
			date_3 = date_now + timedelta(days=3)
			date_4 = date_now + timedelta(days=4)
			date_5 = date_now + timedelta(days=5)

			obj = Table1.objects.filter(
			Q(locker_name__iexact=q1)|
			Q(city__iexact=q2)|
			Q(state__iexact=q3)|
			Q(pincode__iexact=q4)).distinct()
			obj2 = ''
			obj3 = ''
			
			if use_date > date_5:
				var = 6
			elif use_date==date_now:
				var = 0
			elif use_date==date_1:
				var = 1
			elif use_date==date_2:
				var = 2
			elif use_date==date_3:
				var = 3
			elif use_date==date_4:
				var = 4
			elif use_date==date_5:
				var = 5

			for ob in obj:
				for row in ob.prime_set.all():
					if var==3 | var==4 | var==5 | var==6:
						obj2 = ob.prime_capacity
					elif var==0:
						obj2 = row.day0
					elif var==1:
						obj2 = row.day1
					elif var==2:
						obj2 = row.day2
				for r in ob.standard_set.all():
					if var==6:
						obj3 = ob.standard_capacity
					elif var==0:
						obj3 = r.day0
					elif var==1:
						obj3 = r.day1
					elif var==2:
						obj3 = r.day2
					elif var==3:
						obj3 = r.day3
					elif var==4:
						obj3 = r.day4
					elif var==5:
						obj3 = r.day5
			context = {
			"obj": obj,
			"obj2": obj2,
			"obj3": obj3,
			}
			return render(request, 'dashboard.html', context)

	return render(request, 'dashboard.html', {'form':form_class,})