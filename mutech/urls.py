from django.conf.urls import patterns, url

from mutech import views

urlpatterns = patterns('',
    url(r'^mutech/$', views.index, name='index'),
    url(r'^mutech/header/$', views.header, name='header'),
    url(r'^mutech/footer/$', views.footer, name='footer'),
    url(r'^mutech/aboutus/$', views.aboutus, name='aboutus'),
    url(r'^mutech/project/$', views.project, name='project'),
    url(r'^mutech/training/$', views.training, name='training'),
    url(r'^mutech/product/$', views.product, name='product'),
    url(r'^mutech/contact/$', views.contact, name='contact'),
)
