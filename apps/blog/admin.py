from django.contrib import admin
from apps.blog.models import *

admin.site.register(Blogs)

admin.site.register(blogCategory)

admin.site.register(blogPageSEO)
