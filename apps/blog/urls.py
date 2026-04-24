from django.urls import path 
from apps.blog.views import *

urlpatterns = [
    path('blogs/', blogPageFront, name='blogPageFront'),
    path('blog/<str:slug>/', blogDetails, name='blogDetails'),
    path('blog/category/<slug:category_slug>/', blogsByCategory, name='blogsByCategory'),
]
