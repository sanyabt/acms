from django.shortcuts import render
from django.http import HttpResponseRedirect
from .models import Post   #make it Table1

# Create your views here.


def post_detail(request,pk):
    post = get_object_or_404(Table1, pk=pk)
    
    q1 = request.GET.get("selectPrime")
    q2 = request.GET.get("selectStandard")
    q3 = request.GET.get('lockerName')
    #for p in posts:
    if q1 == 'yes':
        if p.prime > 0:
            p.prime = p.prime - 1
            break
    elif q2 == 'yes':
        if p.standard > 0:
            p.standard = p.standard - 1
            break
    post.save()
    return render(request, 'blog/post_list.html', {'post': post})


def Success(request):
    return render(request, 'blog/Success.html')



def post_list(request):
    posts = Post.objects.all()     #MAKE IT TABLE1
    return render(request, 'blog/post_list.html', {'posts': posts})


