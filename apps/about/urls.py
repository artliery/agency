from django.urls import path
from apps.about.views import *

urlpatterns = [
    path('about-us/', aboutPageFront, name='aboutPageFront'),
]
