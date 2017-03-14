from django.conf.urls import url
from . import views

urlpatterns = [
    url(r'^post/new/$', views.post_new, name='post_new'),
    #url(r'^users/view/$', views.users_view, name='users_view'),
    url(r'^post/(?P<pk>\d+)/edit/$', views.post_edit, name='post_edit'),
    url(r'^$', views.post_list, name='post_list'),
    url(r'^post/(?P<pk>\d+)/$', views.post_detail, name='post_detail'),
    url(r'^post/(?P<pk>\d+)/remove/$', views.post_remove, name='post_remove'),
    url(r'^logout_view/$', views.logout_view, name='logout_view'),

    url(r'^login_user/$', views.login_user, name='login_user'),
    url(r'^register/$', views.register , name='register'),
]