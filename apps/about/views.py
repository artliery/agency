from django.shortcuts import render
from apps.about.models import *
from apps.home.models import *
from apps.blog.models import *

def aboutPageFront(request):
    seo = aboutPageSEO.objects.first()
    aboutpage = aboutPage.objects.first()
    about = aboutSection.objects.first()
    funfact = funFactSection.objects.all()
    teams = teamSection.objects.all()
    testimonials = testimonialsSection.objects.all()
    blogs = Blogs.objects.all().order_by('?')

    funfact_section_title = funfactSectionTitle.objects.first()
    testimonial_section_title = testimonialSectionTitle.objects.first()
    blog_section_title = blogSectionTitle.objects.first()
    team_section_title = teamSectionTitle.objects.first()

    context = {
        'seo' : seo,
        'aboutpage' : aboutpage,
        'about' : about,
        'funfact' : funfact,
        'teams' : teams,
        'testimonials' : testimonials,
        'blogs' : blogs,
        'funfact_section_title' : funfact_section_title,
        'testimonial_section_title' : testimonial_section_title,
        'blog_section_title' : blog_section_title,
        'team_section_title' : team_section_title,
    }

    return render(request, 'front/main/about.html', context)

def error_404(request, exception):
    return render(request, 'error/404.html', status=404)