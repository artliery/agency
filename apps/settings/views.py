from django.shortcuts import render
from .models import websiteSetting

def FrontStyle(request):
    website_setting = websiteSetting.objects.first()
    primary_color = website_setting.primary_color
    secondary_color = website_setting.secondary_color

    context = {
        'primary_color': primary_color,
        'secondary_color': secondary_color
    }
    return render(request, 'front/main/css/style.css', context, content_type='text/css')
