from django.shortcuts import render, get_object_or_404
from apps.service.models import servicePageSEO
from apps.home.models import serviceSection,testimonialsSection, serviceSectionTitle, testimonialSectionTitle, pricingSectionTitle
from apps.pricing.models import pricingSection

def serviceFrontPage(request):
    seo = servicePageSEO.objects.first()
    services = serviceSection.objects.all()
    testimonials = testimonialsSection.objects.all()
    pricings = pricingSection.objects.all()
    service_section_title = serviceSectionTitle.objects.first()
    testimonial_section_title = testimonialSectionTitle.objects.first()
    pricing_section_title = pricingSectionTitle.objects.first()

    context ={
        'seo' : seo,
        'services' : services,
        'testimonials' : testimonials,
        'pricings' : pricings,
        'service_section_title' : service_section_title,
        'testimonial_section_title' : testimonial_section_title,
        'pricing_section_title' : pricing_section_title,
    }
    return render(request, 'front/main/service.html', context)

def serviceDetail(request, slug):
    service = get_object_or_404(serviceSection, slug=slug)
    services = serviceSection.objects.all()

    context = {
        'service' : service,
        'services' : services,
    }
    return render(request, 'front/main/partial/service-details.html', context)


def error_404(request, exception):
    return render(request, 'error/404.html', status=404)