from django.conf.urls import patterns, url

from mutech import views

urlpatterns = patterns('',
    url(r'^$', views.index, name='index'),
    url(r'^mutech/header/$', views.header, name='header'),
    url(r'^mutech/footer/$', views.footer, name='footer'),
    url(r'^mutech/aboutus/$', views.aboutus, name='aboutus'),
    url(r'^mutech/project/$', views.project_info, name='project_info'),
    url(r'^mutech/training/$', views.training_info, name='training_info'),
    url(r'^mutech/product/$', views.product_info, name='product_info'),
    url(r'^mutech/contact/$', views.contact, name='contact'),
)
