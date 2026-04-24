from django.urls import path
from apps.pricing.views import pricingPageFront

urlpatterns = [
    path('pricing/', pricingPageFront, name='pricingPageFront'),
]
