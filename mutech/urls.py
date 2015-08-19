from django.conf.urls import patterns, url
from django.conf import settings
from mutech import views

urlpatterns = patterns('',
    url(r'^$', views.index, name='index'),
    url(r'^mutech/header/$', views.header, name='header'),
    url(r'^mutech/footer/$', views.footer, name='footer'),
    url(r'^mutech/aboutus/$', views.aboutus_info, name='aboutus'),
    url(r'^mutech/industrial_project/$', views.industrialproject_info, name='industrialproject_info'),
    url(r'^mutech/student_project/$', views.studentproject_info, name='studentproject_info'),
    url(r'^mutech/student_project/(?P<pk>\d+)/$', views.filteron_studentproject, name='filteron_studentproject'),
    url(r'^mutech/training/$', views.training_info, name='training_info'),
    url(r'^mutech/workshop/$', views.workshop_info, name='workshop_info'),
    url(r'^mutech/contact/$', views.contact, name='contact'),
    url(r'^media/(?P<path>.*)$', 'django.views.static.serve', {
            'document_root': settings.MEDIA_ROOT,
        }),
)
