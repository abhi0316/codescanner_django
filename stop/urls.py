from django.conf.urls import patterns, include, url
from django.contrib import admin
from . import views
print 'reached'
urlpatterns = patterns('',
    # Examples:
    # url(r'^$', 'nestui.views.home', name='home'),
    # url(r'^blog/', include('blog.urls')),
    url(r'', views.stop , name='stop'),
    
)



