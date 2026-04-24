from django.shortcuts import render
from apps.pricing.models import *
from apps.blog.models import Blogs
from apps.home.models import *

def pricingPageFront(request):
    seo = pricingPageSEO.objects.first()
    pricings = pricingSection.objects.all()
    blogs = Blogs.objects.all().order_by('?')
    pricing_section_title = pricingSectionTitle.objects.first()
    blog_section_title = blogSectionTitle.objects.first()

    context = {
        'seo' : seo,
        'pricings' : pricings,
        'blogs' : blogs,
        'pricing_section_title' : pricing_section_title,
        'blog_section_title' : blog_section_title,
    }
    return render(request, 'front/main/pricing.html', context)

def error_404(request, exception):
    return render(request, 'error/404.html', status=404)