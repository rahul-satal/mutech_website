from django.conf.urls import patterns, url

from mutech import views

urlpatterns = patterns('',
    url(r'^mutech/$', views.index, name='index'),
    url(r'^mutech/header/$', views.header, name='header'),
    url(r'^mutech/footer/$', views.footer, name='footer'),
    
)
