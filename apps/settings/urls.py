from django.urls import path
from .views import FrontStyle

urlpatterns = [
    path('style.css', FrontStyle, name='FrontStyle'),
]