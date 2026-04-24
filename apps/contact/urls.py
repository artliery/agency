from django.urls import path
from apps.contact.views import *

urlpatterns = [
    path('contact-us/', contactPageFront, name='contactPageFront'),
    path('contact/', ContactSubmit, name='ContactSubmit'),
    path('subscribe/', SubscriberSubmit, name='SubscriberSubmit'),
]
