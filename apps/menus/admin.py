from django.contrib import admin
from apps.menus.models import *

admin.site.register(primaryMenu)

@admin.register(subMenu)
class subMenuAdmin(admin.ModelAdmin):
    list_display = ('name', 'parent_menu')
