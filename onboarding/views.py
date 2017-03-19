from django.shortcuts import render
from .models import Table1
from django.shortcuts import render, get_object_or_404

from django.shortcuts import redirect
from django.db.models import Q
#from django.core.context_processors import csrf
from django.conf import settings
from django import http
from .forms import UserForm, PostForm
from django.contrib.auth import authenticate, login
from django.contrib.auth import logout

# Create your views here.

def post_new(request):
    if request.method == "POST":
        form = PostForm(request.POST)    #method name -GET or Post is specified in the dictionary value
        if form.is_valid():
            post = form.save(commit=False)
            #post.locker_name = request.user -request.user means the requesting user
            post.save()
            return redirect('post_detail', pk=post.pk)
            #return render(request,'blog/post_edit.html',{'form':form})
    else:
        form = PostForm()
    return render(request, 'blog/post_edit.html', {'form': form})


def post_edit(request, pk):
    post = get_object_or_404(Table1, pk=pk)
    #categories = Category.objects.all
    if request.method == "POST":
        form = PostForm(request.POST, instance=post)
        if form.is_valid():
            post = form.save(commit=False)
            post.save()
            return redirect('post_detail', pk=pk)
    else:
        form = PostForm(instance=post)
    return render(request, 'blog/post_edit.html', {'form': form})


#queryset_list=queryset_list.filter, cant use queryset as queryset is empty
def post_list(request):
    posts = Table1.objects.all()
    query=request.GET.get("q")
    if query:
        posts = posts.filter(
            Q(city__icontains=query)|
            Q(state__icontains=query)|
            Q(locker_name__icontains=query)|
            Q(pincode__icontains=query)|
            Q(standard_capacity__icontains=query)|
            Q(prime_capacity__icontains=query)|
            Q(locker_id__icontains=query)
            ).distinct()
    return render(request, 'blog/post_list.html', {'posts': posts})


def post_detail(request, pk):  #matches url of type post/2005
    post = get_object_or_404(Table1, pk=pk)
    return render(request, 'blog/post_detail.html', {'post': post})

def post_remove(request, pk):
    post = get_object_or_404(Table1, pk=pk)
    post.delete()
    return redirect('blog.views.post_list')



def login_user(request):
    if request.method == "POST":
        mail = request.POST['username']
        password = request.POST['password']
        user = authenticate(username=mail, password=password)
        if user is not None:
            if user.is_active:
                login(request, user)
                posts = Table1.objects.all()
                return render(request, 'blog/post_list.html', {'posts': posts})
            else:
                return render(request, 'blog/login.html', {'error_message': 'Your account has been disabled'})
        else:
            return render(request, 'blog/login.html', {'error_message': 'Invalid login'})
    return render(request, 'blog/login.html')


from django.http import HttpResponse
def login_operational_user(request):
    if request.method == "POST":
        mail = request.POST['username']
        password = request.POST['password']
        user = authenticate(username=mail, password=password)
        if user is not None:
            if user.is_active:
                login(request, user)
                return HttpResponse("Your app")
            else:
                return render(request, 'blog/loginoperational.html', {'error_message': 'Your account has been disabled'})
        else:
            return render(request, 'blog/loginoperational.html', {'error_message': 'Invalid login'})
    return render(request, 'blog/loginoperational.html')




def logout_view(request):
    logout(request)
    posts = Table1.objects.all()
    return render(request, 'blog/post_list.html', {'posts': posts})


def register(request):
    form = UserForm(request.POST or None)
    if form.is_valid():
        user = form.save(commit=False)
        username = form.cleaned_data['username']
        email = form.cleaned_data['email']
        password = form.cleaned_data['password']
        user.set_password(password)
        user.save()
        user = authenticate(username=username, password=password, email=email)
        """
        subject = "Thank you for registering"
        message = "Thank you for registering at CreativityUnplugged. Welcome to the LitLand."
        from_email = settings.EMAIL_HOST_USER
        to_list = [user.email, settings.EMAIL_HOST_USER]
        send_mail(subject,message,from_email,to_list,fail_silently=True)
        messages.success(request,'Thank you for registering!')
        """

        
        if user is not None:
            if user.is_active:
                login(request, user)
                posts = Table1.objects.all()
                #posts = Post.objects.filter(user=request.author)
                #after they login we want to redirect them to homepg
                return render(request, 'blog/post_list.html', {'posts': posts}) #first posts means that term will be encountered in the template, last posts means it is the dictionary through which that posts has to search
            #if the din login, return that try again->here is a blank form for u """
        #return render(request.self.template_name,{'form':form})
        posts = Table1.objects.all()
        return render(request, 'blog/login.html')


    context ={
        "form": form,
    }
    return render(request, 'blog/registration_form.html', context)
