from django.contrib import admin
from apps.settings.models import *

admin.site.register(websiteSetting)

admin.site.register(SeoSetting)

admin.site.register(headerFooterSetting)

admin.site.register(templateSettings)
