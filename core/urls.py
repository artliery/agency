from django.contrib import admin
from django.urls import path, include
from django.conf import settings
from django.conf.urls.static import static
from django.views.generic import RedirectView
from core.sitemaps import generate_sitemap

# Customize admin site
admin.site.site_header = 'Site Administration'  # Default: "Django Administration"
admin.site.site_title = 'Site Admin'  # Default: "Django site admin"
admin.site.index_title = 'Site Administration'  # Default: "Site administration"

urlpatterns = [
    path('secure-admin-portal/', admin.site.urls),  # Changed from admin/ to secure-admin-portal/
    path('dashboard/', RedirectView.as_view(pattern_name="adminHome"), name='adminRedirect'),
    path('admin/', RedirectView.as_view(pattern_name="adminHome"), name='adminRedirect2'),
    path('', include('apps.adminapp.urls')),
    path('', include('apps.accounts.urls')),
    path('', include('apps.home.urls')),
    path('', include('apps.about.urls')),
    path('', include('apps.pricing.urls')),
    path('', include('apps.blog.urls')),
    path('', include('apps.contact.urls')),
    path('', include('apps.service.urls')), 
    path('', include('apps.project.urls')),
    path('', include('apps.legal.urls')),
    path('', include('apps.marketing.urls')),
    path('', include('apps.custompage.urls')),
    path('', include('apps.settings.urls')),
    path('sitemap.xml', generate_sitemap, name='generate_sitemap'),
]

handler404 = 'apps.accounts.views.error_404'
handler500 = 'apps.adminapp.views.error_500'

# Add static and media file serving
urlpatterns += static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)
urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)



# from django.contrib import admin
# from django.urls import path, include
# from django.conf import settings
# from django.conf.urls.static import static
# from django.views.generic import RedirectView
# from django.conf.urls.i18n import i18n_patterns  # Import i18n_patterns

# from core.sitemaps import generate_sitemap

# urlpatterns = [
#     # Your non-i18n patterns here
#     path('oldadmin/', admin.site.urls),
#     path('admin/', RedirectView.as_view(pattern_name="adminHome"), name='adminRedirect'),
#     path('dashboard/', RedirectView.as_view(pattern_name="adminHome"), name='adminRedirect2'),
#     path('sitemap.xml', generate_sitemap, name='generate_sitemap'),
# ]

# urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)

# # Wrap existing URL patterns with i18n_patterns
# urlpatterns += i18n_patterns(
#     # Include your app's URL patterns here
#     path('', include('adminapp.urls')),
#     path('', include('accounts.urls')),
#     path('', include('home.urls')),
#     path('', include('about.urls')),
#     path('', include('pricing.urls')),
#     path('', include('blog.urls')),
#     path('', include('contact.urls')),
#     path('', include('service.urls')),
#     path('', include('project.urls')),
#     path('', include('legal.urls')),
#     path('', include('marketing.urls')),
#     path('', include('custompage.urls')),
# )

# handler404 = 'accounts.views.error_404'
# handler404 = 'adminapp.views.error_404'
# handler404 = 'home.views.error_404'
# handler404 = 'service.views.error_404'
# handler404 = 'project.views.error_404'
# handler404 = 'contact.views.error_404'
# handler404 = 'about.views.error_404'
# handler404 = 'blog.views.error_404'
# handler404 = 'settings.views.error_404'
# handler404 = 'legal.views.error_404'

# handler500 = 'adminapp.views.error_500'
