from django.shortcuts import render
from apps.home.models import *
from apps.pricing.models import pricingSection
from apps.about.models import teamSection
from apps.blog.models import *
from apps.settings.models import templateSettings, websiteSetting
from apps.analytics.views import visitor_data
# ===============> Front Home Page View <===============

def homePageFront(request):
    visitor_data(request)
    
    meta = homePageSEO.objects.first()
    sliders = sliderSection.objects.all()
    services = serviceSection.objects.all()
    about = aboutSection.objects.first()
    funfacts = funFactSection.objects.all()
    project_categories= projectCategory.objects.all()
    projects = projectSection.objects.all().order_by('?')
    clients = clientSection.objects.all()
    testimonials = testimonialsSection.objects.all()
    pricings = pricingSection.objects.all()
    teams = teamSection.objects.all()
    blogs = Blogs.objects.all().order_by('?')

    service_section_title = serviceSectionTitle.objects.first()
    funfact_section_title = funfactSectionTitle.objects.first()
    client_section_title = clientSectionTitle.objects.first()
    testimonial_section_title = testimonialSectionTitle.objects.first()
    project_section_title = projectSectionTitle.objects.first()
    pricing_section_title = pricingSectionTitle.objects.first()
    team_section_title = teamSectionTitle.objects.first()
    blog_section_title = blogSectionTitle.objects.first()
    
    template_settings = templateSettings.objects.first()
    
    if not template_settings:
        template_settings = templateSettings.objects.create(template1=True)

    website_settings = websiteSetting.objects.first()
    if not website_settings:
        website_settings = websiteSetting.objects.create(
            name = "Application Name",
            author = "Author Name"
        )

    context = {
        'meta' : meta,
        'sliders' : sliders,
        'services' : services,
        'about' : about,
        'funfacts' : funfacts,
        'project_categories' : project_categories,
        'projects': projects,
        'clients' : clients,
        'testimonials' : testimonials,
        'pricings' : pricings,
        'teams' : teams,
        'blogs' : blogs,

        'service_section_title' : service_section_title,
        'funfact_section_title' : funfact_section_title,
        'client_section_title' : client_section_title,
        'testimonial_section_title' : testimonial_section_title,
        'project_section_title' : project_section_title,
        'pricing_section_title' : pricing_section_title,
        'team_section_title' : team_section_title,
        'blog_section_title' : blog_section_title,
    }
   
    
    if template_settings.template1 == True:
        return render(request, 'front/main/index.html', context)
    elif template_settings.template2 == True:
        return render(request, 'front/main/home2.html', context)
    else:
        return render(request, 'front/main/index.html', context)

def error_404(request, exception):
    return render(request, 'error/404.html', status=404)