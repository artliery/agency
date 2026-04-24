from django.shortcuts import render, redirect, get_object_or_404
from django.contrib import messages
from django.contrib.auth.decorators import login_required
from core.decorators import admin_role_required, both_role_required
from apps.home.models import *
from apps.home.forms import *
from apps.about.models import *
from apps.about.forms import *
from apps.blog.models import *
from apps.blog.forms import *
from apps.pricing.models import *
from apps.pricing.forms import *
from apps.contact.models import *
from apps.contact.forms import *
from apps.settings.models import *
from apps.settings.forms import *
from apps.menus.models import *
from apps.menus.forms import *
from apps.service.models import *
from apps.service.forms import *
from apps.project.models import *
from apps.project.forms import *
from apps.legal.models import *
from apps.legal.forms import *
from apps.analytics.views import analyticsData

# # # # # # # # # # # # # # # # # #
        # Admin Home Page #
# # # # # # # # # # # # # # # # # #
@login_required(login_url='logIn')
@both_role_required
def adminHome(request):
    blogs = Blogs.objects.all().order_by('-created_at')
    services = serviceSection.objects.all()
    projects = projectSection.objects.all()
    testimonials = testimonialsSection.objects.all()
    teams = teamSection.objects.all()
    clients = clientSection.objects.all()
    subscribers = Subscriber.objects.all().order_by('-created_at')[:7]
    contacts = Contact.objects.all().order_by('-created_at')[:7]
    
    
    context = {
        'title' : 'Dashboard',
        'blogs' : blogs,
        'services': services,
        'projects': projects,
        'testimonials': testimonials,
        'teams': teams,
        'clients': clients,
        'subscribers' : subscribers,
        'contacts' : contacts,
        
        'analytics' : analyticsData(request)
    }
    return render(request, 'dashboard/main/index.html', context)

# # # # # # # # # # # # # # # # # #
        # Admin Blog #
# # # # # # # # # # # # # # # # # #
@login_required(login_url='logIn')
@both_role_required
def adminBlogList(request):
    blogs = Blogs.objects.all().order_by('-created_at')
    context = {
        'title' : 'Blogs',
        'blogs' : blogs,
    }
    return render(request, 'dashboard/main/blog/blogs.html', context)

@login_required(login_url='logIn')
@both_role_required
def adminBlogCreate(request):
    if request.method == 'POST':
        form = blogFrom(request.POST, request.FILES)
        if form.is_valid():
            form.save()
            messages.success(request, 'Blog created successfully!')
            return redirect('adminBlogList')
    else:
        form = blogFrom()
    context = {
        'title' : 'Create Blog',
        'form' : form,
    }
    return render(request, 'dashboard/main/blog/create.html', context)

@login_required(login_url='logIn')
@both_role_required
def adminBlogEdit(request, id):
    blog = get_object_or_404(Blogs, id=id)
    if request.method == 'POST':
        form = blogFrom(request.POST, request.FILES, instance=blog)
        if form.is_valid():
            form.save()
            messages.success(request, 'Blog updated successfully!')
            return redirect('adminBlogList')
    else:
        form = blogFrom(instance=blog)
    context = {
        'title' : 'Edit Blog',
        'blog' : blog,
        'form' : form,
    }
    return render(request, 'dashboard/main/blog/edit.html', context)

@login_required(login_url='logIn')
@both_role_required
def adminBlogDelete(request, id):
    blog = get_object_or_404(Blogs, id=id)
    blog.delete()
    messages.warning(request, 'Blog deleted!')
    return redirect('adminBlogList')

# # # # # # # # # # # # # # # # # #
    # Admin Blog Categories #
# # # # # # # # # # # # # # # # # #
@login_required(login_url='logIn')
@both_role_required
def adminBlogCategoryList(request):
    categories = blogCategory.objects.all()
    context = {
        'title' : 'Blog Categories',
        'categories' : categories,
    }
    return render(request, 'dashboard/main/blog/partial/category/categories.html', context)

@login_required(login_url='logIn')
@both_role_required
def adminBlogCategoryCreate(request):
    if request.method == 'POST':
        form = blogCategoryForm(request.POST, request.FILES)
        if form.is_valid():
            form.save()
            messages.success(request, 'Category created successfully!')
            return redirect('adminBlogCategoryList')
    else:
        form = blogCategoryForm()
    context = {
        'title' : 'Create Blog Category',
        'form' : form,
    }
    return render(request, 'dashboard/main/blog/partial/category/create.html', context)

@login_required(login_url='logIn')
@both_role_required
def adminBlogCategoryEdit(request, id):
    category = get_object_or_404(blogCategory, id=id)
    if request.method == 'POST':
        form = blogCategoryForm(request.POST, request.FILES, instance=category)
        if form.is_valid():
            form.save()
            messages.success(request, 'Category updated successfully!')
            return redirect('adminBlogCategoryList')
    else:
        form = blogCategoryForm(instance=category)
    context = {
        'title' : 'Edit Blog Category',
        'category' : category,
        'form' : form,
    }
    return render(request, 'dashboard/main/blog/partial/category/edit.html', context)

@login_required(login_url='logIn')
@both_role_required
def adminBlogCategoryDelete(request, id):
    category = get_object_or_404(blogCategory, id=id)
    category.delete()
    messages.warning(request, 'Category deleted!')
    return redirect('adminBlogCategoryList')

# # # # # # # # # # # # # # # # # #
        # Admin Project #
# # # # # # # # # # # # # # # # # #
@login_required(login_url='logIn')
@admin_role_required
def adminProjectList(request):
    projects = projectSection.objects.all()
    context = {
        'title' : 'Projects',
        'projects' : projects,
    }
    return render(request, 'dashboard/main/project/projects.html', context)

@login_required(login_url='logIn')
@admin_role_required
def adminProjectCreate(request):
    if request.method == 'POST':
        form = projectSectionForm(request.POST, request.FILES)
        if form.is_valid():
            form.save()
            messages.success(request, 'Project created successfully!')
            return redirect('adminProjectList')
    else:
        form = projectSectionForm()
    context = {
        'title' : 'Create Project',
        'form' : form,
    }
    return render(request, 'dashboard/main/project/create.html', context)

@login_required(login_url='logIn')
@admin_role_required
def adminProjectEdit(request, id):
    project = get_object_or_404(projectSection, id=id)
    if request.method == 'POST':
        form = projectSectionForm(request.POST, request.FILES, instance=project)
        if form.is_valid():
            form.save()
            messages.success(request, 'Project updated successfully!')
            return redirect('adminProjectList')
    else:
        form = projectSectionForm(instance=project)
    context = {
        'title' : 'Edit Project',
        'project' : project,
        'form' : form,
    }
    return render(request, 'dashboard/main/project/edit.html', context)

@login_required(login_url='logIn')
@admin_role_required
def adminProjectDelete(request, id):
    project = get_object_or_404(projectSection, id=id)
    project.delete()
    messages.warning(request, 'Project deleted!')
    return redirect('adminProjectList')

# # # # # # # # # # # # # # # # # #
    # Admin Project Categories #
# # # # # # # # # # # # # # # # # #
@login_required(login_url='logIn')
@admin_role_required
def adminProjectCategoryList(request):
    categories = projectCategory.objects.all()
    context = {
        'title' : 'Project Categories',
        'categories' : categories,
    }
    return render(request, 'dashboard/main/project/partial/category/categories.html', context)

@login_required(login_url='logIn')
@admin_role_required
def adminProjectCategoryCreate(request):
    if request.method == 'POST':
        form = projectCategoryForm(request.POST, request.FILES)
        if form.is_valid():
            form.save()
            messages.success(request, 'Category created successfully!')
            return redirect('adminProjectCategoryList')
    else:
        form = projectCategoryForm()
    context = {
        'title' : 'Create Project Category',
        'form' : form,
    }
    return render(request, 'dashboard/main/project/partial/category/create.html', context)

@login_required(login_url='logIn')
@admin_role_required
def adminProjectCategoryEdit(request, id):
    category = get_object_or_404(projectCategory, id=id)
    if request.method == 'POST':
        form = projectCategoryForm(request.POST, request.FILES, instance=category)
        if form.is_valid():
            form.save()
            messages.success(request, 'Category updated successfully!')
            return redirect('adminProjectCategoryList')
    else:
        form = projectCategoryForm(instance=category)
    context = {
        'title' : 'Edit Project Category',
        'category' : category,
        'form' : form,
    }
    return render(request, 'dashboard/main/project/partial/category/edit.html', context)

@login_required(login_url='logIn')
@admin_role_required
def adminProjectCategoryDelete(request, id):
    category = get_object_or_404(projectCategory, id=id)
    category.delete()
    messages.warning(request, 'Category deleted!')
    return redirect('adminProjectCategoryList')

# # # # # # # # # # # # # # # # # #
        # Admin Service #
# # # # # # # # # # # # # # # # # #
@login_required(login_url='logIn')
@admin_role_required
def adminServiceList(request):
    services = serviceSection.objects.all()
    context = {
        'title' : 'Services',
       'services' : services,
    }
    return render(request, 'dashboard/main/service/services.html', context)

@login_required(login_url='logIn')
@admin_role_required
def adminServiceCreate(request):
    if request.method == 'POST':
        form = serviceForm(request.POST, request.FILES)
        if form.is_valid():
            form.save()
            messages.success(request, 'Service created successfully!')
            return redirect('adminServiceList')
    else:
        form = serviceForm()
    context = {
        'title' : 'Create Service',
        'form' : form,
    }
    return render(request, 'dashboard/main/service/create.html', context)

@login_required(login_url='logIn')
@admin_role_required
def adminServiceEdit(request, id):
    service = get_object_or_404(serviceSection, id=id)
    if request.method == 'POST':
        form = serviceForm(request.POST, request.FILES, instance=service)
        if form.is_valid():
            form.save()
            messages.success(request, 'Service updated successfully!')
            return redirect('adminServiceList')
    else:
        form = serviceForm(instance=service)
    context = {
        'title' : 'Edit Service',
       'service' : service,
        'form' : form,
    }
    return render(request, 'dashboard/main/service/edit.html', context)

@login_required(login_url='logIn')
@admin_role_required
def adminServiceDelete(request, id):
    service = get_object_or_404(serviceSection, id=id)
    service.delete()
    messages.warning(request, 'Service deleted!')
    return redirect('adminServiceList')

# # # # # # # # # # # # # # # # # #
    # Admin Slider Element #
# # # # # # # # # # # # # # # # # #
@login_required(login_url='logIn')
@admin_role_required
def adminSliderElementList(request):
    sliders = sliderSection.objects.all()
    context = {
        'title' : 'Sliders',
        'sliders' : sliders,
    }
    return render(request, 'dashboard/main/elements/slider/sliders.html', context)

@login_required(login_url='logIn')
@admin_role_required
def adminSliderElementCreate(request):
    if request.method == 'POST':
        form = sliderForm(request.POST, request.FILES)
        if form.is_valid():
            form.save()
            messages.success(request, 'Slider created successfully!')
            return redirect('adminSliderElementList')
    else:
        form = sliderForm()
    context = {
        'title' : 'Create Slider',
        'form' : form,
    }
    return render(request, 'dashboard/main/elements/slider/create.html', context)

@login_required(login_url='logIn')
@admin_role_required
def adminSliderElementEdit(request, id):
    slider = get_object_or_404(sliderSection, id=id)
    if request.method == 'POST':
        form = sliderForm(request.POST, request.FILES, instance=slider)
        if form.is_valid():
            form.save()
            messages.success(request, 'Slider updated successfully!')
            return redirect('adminSliderElementList')
    else:
        form = sliderForm(instance=slider)

    context = {
        'title' : 'Edit Slider',
        'form' : form,
        'slider' : slider,
    }
    return render(request, 'dashboard/main/elements/slider/edit.html', context)

@login_required(login_url='logIn')
@admin_role_required
def adminSliderElementDelete(request, id):
    slider = get_object_or_404(sliderSection, id=id)
    slider.delete()
    messages.warning(request, 'Slider deleted!')
    return redirect('adminSliderElementList')

# # # # # # # # # # # # # # # # # #
    # Admin Fun Fact Element #
# # # # # # # # # # # # # # # # # #
@login_required(login_url='logIn')
@admin_role_required
def adminFunFactElementList(request):
    facts = funFactSection.objects.all()
    context = {
        'title' : 'Fun Facts',
        'facts' : facts,
    }
    return render(request, 'dashboard/main/elements/funfact/funfacts.html', context)

@login_required(login_url='logIn')
@admin_role_required
def adminFunFactElementCreate(request):
    if request.method == 'POST':
        form = funFactSectionForm(request.POST, request.FILES)
        if form.is_valid():
            form.save()
            messages.success(request, 'Fun Fact created successfully!')
            return redirect('adminFunFactElementList')
    else:
        form = funFactSectionForm()
    context = {
        'title' : 'Create Fun Fact',
        'form' : form,
    }
    return render(request, 'dashboard/main/elements/funfact/create.html', context)

@login_required(login_url='logIn')
@admin_role_required
def adminFunFactElementEdit(request, id):
    fact = get_object_or_404(funFactSection, id=id)
    if request.method == 'POST':
        form = funFactSectionForm(request.POST, request.FILES, instance=fact)
        if form.is_valid():
            form.save()
            messages.success(request, 'Fun Fact updated successfully!')
            return redirect('adminFunFactElementList')
    else:
        form = funFactSectionForm(instance=fact)
    context = {
        'title' : 'Edit Fun Fact',
        'form' : form,
        'fact' : fact,
    }
    return render(request, 'dashboard/main/elements/funfact/edit.html', context)

@login_required(login_url='logIn')
@admin_role_required
def adminFunFactElementDelete(request, id):
    fact = get_object_or_404(funFactSection, id=id)
    fact.delete()
    messages.warning(request, 'Fun Fact deleted!')
    return redirect('adminFunFactElementList')

# # # # # # # # # # # # # # # # # #
   # Admin Testimonials Element #
# # # # # # # # # # # # # # # # # #
@login_required(login_url='logIn')
@admin_role_required
def adminTestimonialsElementList(request):
    testimonials = testimonialsSection.objects.all()
    context = {
        'title' : 'Testimonials',
        'testimonials' : testimonials,
    }
    return render(request, 'dashboard/main/elements/testimonial/testimonials.html', context)

@login_required(login_url='logIn')
@admin_role_required
def adminTestimonialsElementCreate(request):
    if request.method == 'POST':
        form = testimonialSectionForm(request.POST, request.FILES)
        if form.is_valid():
            form.save()
            messages.success(request, 'Testimonial created successfully!')
            return redirect('adminTestimonialsElementList')
    else:
        form = testimonialSectionForm()
    context = {
        'title' : 'Create Testimonial',
        'form' : form,
    }
    return render(request, 'dashboard/main/elements/testimonial/create.html', context)

@login_required(login_url='logIn')
@admin_role_required
def adminTestimonialsElementEdit(request, id):
    testimonial = get_object_or_404(testimonialsSection, id=id)
    if request.method == 'POST':
        form = testimonialSectionForm(request.POST, request.FILES, instance=testimonial)
        if form.is_valid():
            form.save()
            messages.success(request, 'Testimonial updated successfully!')
            return redirect('adminTestimonialsElementList')
    else:
        form = testimonialSectionForm(instance=testimonial)
    context = {
        'title' : 'Edit Testimonial',
        'form' : form,
        'testimonial' : testimonial,
    }
    return render(request, 'dashboard/main/elements/testimonial/edit.html', context)

@login_required(login_url='logIn')
@admin_role_required
def adminTestimonialsElementDelete(request, id):
    testimonial = get_object_or_404(testimonialsSection, id=id)
    testimonial.delete()
    messages.warning(request, 'Testimonial deleted!')
    return redirect('adminTestimonialsElementList')

# # # # # # # # # # # # # # # # # #
      # Admin Team Element #
# # # # # # # # # # # # # # # # # #
@login_required(login_url='logIn')
@admin_role_required
def adminTeamElementList(request):
    teams = teamSection.objects.all()
    context = {
        'title' : 'Teams',
        'teams' : teams,
    }
    return render(request, 'dashboard/main/elements/team/teams.html', context)

@login_required(login_url='logIn')
@admin_role_required
def adminTeamElementCreate(request):
    if request.method == 'POST':
        form = teamSectionForm(request.POST, request.FILES)
        if form.is_valid():
            form.save()
            messages.success(request, 'Team memeber created successfully!')
            return redirect('adminTeamElementList')
    else:
        form = teamSectionForm()
    context = {
        'title' : 'Create Team',
        'form' : form,
    }
    return render(request, 'dashboard/main/elements/team/create.html', context)

@login_required(login_url='logIn')
@admin_role_required
def adminTeamElementEdit(request, id):
    team = get_object_or_404(teamSection, id=id)
    if request.method == 'POST':
        form = teamSectionForm(request.POST, request.FILES, instance=team)
        if form.is_valid():
            form.save()
            messages.success(request, 'Team memeber updated successfully!')
            return redirect('adminTeamElementList')
    else:
        form = teamSectionForm(instance=team)
    context = {
        'title' : 'Edit Team',
        'form' : form,
        'team' : team,
    }
    return render(request, 'dashboard/main/elements/team/edit.html', context)

@login_required(login_url='logIn')
@admin_role_required
def adminTeamElementDelete(request, id):
    team = get_object_or_404(teamSection, id=id)
    team.delete()
    messages.warning(request, 'Team memeber deleted!')
    return redirect('adminTeamElementList')

# # # # # # # # # # # # # # # # # #
    # Admin Client Element #
# # # # # # # # # # # # # # # # # #
@login_required(login_url='logIn')
@admin_role_required
def adminClientElementList(request):
    clients = clientSection.objects.all()
    context = {
        'title' : 'Clients',
        'clients' : clients,
    }
    return render(request, 'dashboard/main/elements/client/clients.html', context)

@login_required(login_url='logIn')
@admin_role_required
def adminClientElementCreate(request):
    if request.method == 'POST':
        form = clientSectionForm(request.POST, request.FILES)
        if form.is_valid():
            form.save()
            messages.success(request, 'Client created successfully!')
            return redirect('adminClientElementList')
    else:
        form = clientSectionForm()
    context = {
        'title' : 'Create Client',
        'form' : form,
    }
    return render(request, 'dashboard/main/elements/client/create.html', context)

@login_required(login_url='logIn')
@admin_role_required
def adminClientElementEdit(request, id):
    client = get_object_or_404(clientSection, id=id)
    if request.method == 'POST':
        form = clientSectionForm(request.POST, request.FILES, instance=client)
        if form.is_valid():
            form.save()
            messages.success(request, 'Client updated successfully!')
            return redirect('adminClientElementList')
    else:
        form = clientSectionForm(instance=client)

    context = {
        'title' : 'Edit Client',
        'form' : form,
        'client' : client,
    }
    return render(request, 'dashboard/main/elements/client/edit.html', context)

@login_required(login_url='logIn')
@admin_role_required
def adminClientElementDelete(request, id):
    client = get_object_or_404(clientSection, id=id)
    client.delete()
    messages.warning(request, 'Client deleted!')
    return redirect('adminClientElementList')

# # # # # # # # # # # # # # # # # #
    # Admin Pricing Element #
# # # # # # # # # # # # # # # # # #
@login_required(login_url='logIn')
@admin_role_required
def adminPricingElementList(request):
    pricings = pricingSection.objects.all()
    context = {
        'title' : 'Pricing',
        'pricings' : pricings,
    }
    return render(request, 'dashboard/main/elements/pricing/pricing.html', context)

@login_required(login_url='logIn')
@admin_role_required
def adminPricingElementCreate(request):
    if request.method == 'POST':
        form = pricingForm(request.POST, request.FILES)
        if form.is_valid():
            form.save()
            messages.success(request, 'Pricing created successfully!')
            return redirect('adminPricingElementList')
    else:
        form = pricingForm()
    context = {
        'title' : 'Create Pricing',
        'form' : form,
    }
    return render(request, 'dashboard/main/elements/pricing/create.html', context)

@login_required(login_url='logIn')
@admin_role_required
def adminPricingElementEdit(request, id):
    pricing = get_object_or_404(pricingSection, id=id)
    if request.method == 'POST':
        form = pricingForm(request.POST, request.FILES, instance=pricing)
        if form.is_valid():
            form.save()
            messages.success(request, 'Pricing updated successfully!')
            return redirect('adminPricingElementList')
    else:
        form = pricingForm(instance=pricing)
    context = {
        'title' : 'Edit Pricing',
        'form' : form,
        'pricing' : pricing,
    }
    return render(request, 'dashboard/main/elements/pricing/edit.html', context)

@login_required(login_url='logIn')
@admin_role_required
def adminPricingElementDelete(request, id):
    pricing = get_object_or_404(pricingSection, id=id)
    pricing.delete()
    messages.success(request, 'Pricing deleted!')
    return redirect('adminPricingElementList')

# # # # # # # # # # # # # # # # # #
    # Admin Contacts #
# # # # # # # # # # # # # # # # # #
@login_required(login_url='logIn')
@admin_role_required
def AdminContactList(request):
    contacts = Contact.objects.all()
    context = {
        'title' : 'Contacts',
        'contacts' : contacts,
    }
    return render(request, 'dashboard/main/form_data/contacts.html', context)

@login_required(login_url='logIn')
@admin_role_required
def AdminContactDelete(request, id):
    contact = get_object_or_404(Contact, id=id)
    contact.delete()
    messages.warning(request, 'Contact deleted!')
    return redirect('AdminContactList')

# # # # # # # # # # # # # # # # # #
    # Admin Subscriber #
# # # # # # # # # # # # # # # # # #
@login_required(login_url='logIn')
@admin_role_required
def AdminSubscriberList(request):
    subscribers = Subscriber.objects.all()
    
    context = {
        'title' : 'Subscribers',
        'subscribers' : subscribers
    }
    return render(request, 'dashboard/main/form_data/subscribers.html', context)

@login_required(login_url='logIn')
@admin_role_required
def AdminSubscriberDelete(request, id):
    subscriber = get_object_or_404(Subscriber, id=id)
    subscriber.delete()
    return redirect('AdminSubscriberList')

# # # # # # # # # # # # # # # # # #
    # Admin Website Settings #
# # # # # # # # # # # # # # # # # #
@login_required(login_url='logIn')
@admin_role_required
def AdminWebsiteSettings(request):
    setting = websiteSetting.objects.first()
    if request.method == 'POST':
        form = websiteSettingForm(request.POST, request.FILES, instance=setting)
        if form.is_valid():
            form.save()
            messages.success(request, 'Settings updated successfully!')
            return redirect('AdminWebsiteSettings')
    else:
        form = websiteSettingForm(instance=setting)
    context = {
        'title' : 'Website Settings',
        'setting' : setting,
        'form' : form,
    }
    return render(request, 'dashboard/main/setting/website.html', context)

@login_required(login_url='logIn')
@admin_role_required
def AdminHeaderFooterSettings(request):
    hf = headerFooterSetting.objects.first()
    if request.method == 'POST':
        form = headerFooterSettingForm(request.POST, request.FILES, instance=hf)
        if form.is_valid():
            form.save()
            messages.success(request, 'Header footer updated successfully!')
            return redirect('AdminHeaderFooterSettings')
    else:
        form = headerFooterSettingForm(instance=hf)
    context = {
        'title' : 'Header Footer Settings',
        'hf' : hf,
        'form' : form,
    }
    return render(request, 'dashboard/main/setting/hf.html', context)

@login_required(login_url='logIn')
@admin_role_required
def AdminSEOSettings(request):
    seo = SeoSetting.objects.first()
    if request.method == 'POST':
        form = SeoSettingForm(request.POST, request.FILES, instance=seo)
        if form.is_valid():
            form.save()
            messages.success(request, 'SEO settings updated successfully!')
            return redirect('AdminSEOSettings')
    else:
        form = SeoSettingForm(instance=seo)
    context = {
        'title' : 'SEO Settings',
        'seo' : seo,
        'form' : form,
    }
    return render(request, 'dashboard/main/setting/seo.html', context)

# # # # # # # # # # # # # # # # # #
    # Admin Template Settings #
# # # # # # # # # # # # # # # # # #
@login_required(login_url='logIn')
@admin_role_required
def AdmintemplateSettings(request):
    
    template_settings = templateSettings.objects.first()
    
    if request.method == 'POST':
        option1 = request.POST.get('option1')
        option2 = request.POST.get('option2')
        
        if option1 == "on":
            template_settings.template1 = True
            template_settings.template2 = False
        elif option2 == "on":
            template_settings.template1 = False
            template_settings.template2 = True
        messages.success(request, 'Template settings updated successfully!')
        template_settings.save()
        return redirect("AdmintemplateSettings")
    
    context = {
        'title' : 'Template Settings',
        'ts' : template_settings,
    }
    return render(request, 'dashboard/main/setting/ts.html', context)

# # # # # # # # # # # # # # # # # #
    # Admin Primary Menus #
# # # # # # # # # # # # # # # # # #
@login_required(login_url='logIn')
@admin_role_required
def AdminPrimaryMenuList(request):
    menus = primaryMenu.objects.all().order_by('order')
    context = {
      'title' : 'Menus',
      'menus' : menus,
    }
    return render(request, 'dashboard/main/menu/primary/menus.html', context)

@login_required(login_url='logIn')
@admin_role_required
def AdminPrimaryMenuCreate(request):
    if request.method == 'POST':
        form = primaryMenuForm(request.POST)
        if form.is_valid():
            order = form.cleaned_data['order']
            if primaryMenu.objects.filter(order=order).exists():
                form.add_error('order', 'A menu with this order already exists. Use a different order.')
            else:
                form.save()
                messages.success(request, 'Menu created successfully!')
                return redirect('AdminPrimaryMenuList')
    else:
        form = primaryMenuForm()

    context = {
        'title': 'Create Menu',
        'form': form,
    }
    return render(request, 'dashboard/main/menu/primary/create.html', context)

@login_required(login_url='logIn')
@admin_role_required
def AdminPrimaryMenuEdit(request, id):
    menu = get_object_or_404(primaryMenu, id=id)
    if request.method == 'POST':
        form = primaryMenuForm(request.POST, instance=menu)
        if form.is_valid():
            order = form.cleaned_data['order']
            if primaryMenu.objects.filter(order=order).exclude(id=id).exists():
                form.add_error('order', 'A menu with this order already exists. Use a different order.')
            else:
                form.save()
                messages.success(request, 'Menu updated successfully!')
                return redirect('AdminPrimaryMenuList')
    else:
        form = primaryMenuForm(instance=menu)

    context = {
        'title': 'Edit Menu',
        'form': form,
      'menu': menu,
    }
    return render(request, 'dashboard/main/menu/primary/edit.html', context)

@login_required(login_url='logIn')
@admin_role_required
def AdminPrimaryMenuDelete(request, id):
    menu = get_object_or_404(primaryMenu, id=id)
    menu.delete()
    messages.warning(request, 'Menu deleted!')
    return redirect('AdminPrimaryMenuList')

# # # # # # # # # # # # # # # # # #
    # Admin Sub Menus #
# # # # # # # # # # # # # # # # # #
@login_required(login_url='logIn')
@admin_role_required
def AdminSubMenuList(request):
    submenus = subMenu.objects.all().order_by('-id')
    context = {
        'title' : 'Sub Menus',
        'submenus' : submenus,
    }
    return render(request, 'dashboard/main/menu/sub/menus.html', context)

@login_required(login_url='logIn')
@admin_role_required
def AdminSubMenuCreate(request):
    if request.method == 'POST':
        form = subMenuForm(request.POST)
        if form.is_valid():
            form.save()
            messages.success(request, 'Submenu created successfully!')
            return redirect('AdminSubMenuList')
    else:
        form = subMenuForm()
    
    context = {
        'title': 'Create Submenu',
        'form': form,
    }
    return render(request, 'dashboard/main/menu/sub/create.html', context)

@login_required(login_url='logIn')
@admin_role_required
def AdminSubMenuEdit(request, id):
    submenu = get_object_or_404(subMenu, id=id)
    if request.method == 'POST':
        form = subMenuForm(request.POST, instance=submenu)
        if form.is_valid():
            form.save()
            messages.success(request, 'Submenu updated successfully!')
            return redirect('AdminSubMenuList')
    else:
        form = subMenuForm(instance=submenu)
    
    context = {
        'title': 'Edit Submenu',
        'form': form,
        'submenu': submenu,
    }
    return render(request, 'dashboard/main/menu/sub/edit.html', context)

@login_required(login_url='logIn')
@admin_role_required
def AdminSubMenuDelete(request, id):
    submenu = get_object_or_404(subMenu, id=id)
    submenu.delete()
    messages.warning(request, 'Submenu deleted!')
    return redirect('AdminSubMenuList')

# # # # # # # # # # # # # # # # # #
    # Admin Page Edit #
# # # # # # # # # # # # # # # # # #
@login_required(login_url='logIn')
@admin_role_required
def AdminHomePage(request):
    homeabout = aboutSection.objects.first()
    homeSEO = homePageSEO.objects.first()

    service_section_title = serviceSectionTitle.objects.first()
    funfact_section_title = funfactSectionTitle.objects.first()
    client_section_title = clientSectionTitle.objects.first()
    project_section_title = projectSectionTitle.objects.first()
    testimonial_section_title = testimonialSectionTitle.objects.first()
    pricing_section_title = pricingSectionTitle.objects.first()
    team_section_title = teamSectionTitle.objects.first()
    blog_section_title = blogSectionTitle.objects.first()

    if request.method == 'POST':
        if 'subtitle' in request.POST:
            form = aboutSectionForm(request.POST, request.FILES, instance = homeabout)
            if form.is_valid():
                form.save()
                messages.success(request, 'Home page updated successfully!')
                return redirect('AdminHomePage')
        elif 'meta_title' in request.POST:
            SeoForm = homePageSEOForm(request.POST, request.FILES, instance = homeSEO)
            if SeoForm.is_valid():
                SeoForm.save()
                messages.success(request, 'Home page seo updated successfully!')
                return redirect('AdminHomePage')
        elif 'service_section_title' in request.POST:
            service_section_title_form = serviceSectionTitleForm(request.POST, instance=service_section_title)
            if service_section_title_form.is_valid():
                service_section_title_form.save()
                messages.success(request, 'Service section title updated successfully!')
                return redirect('AdminHomePage')
        elif 'funfact_section_title' in request.POST:
            funfact_section_title_form = funfactSectionTitleForm(request.POST, instance=funfact_section_title)
            if funfact_section_title_form.is_valid():
                funfact_section_title_form.save()
                messages.success(request, 'Fun Fact section title updated successfully!')
                return redirect('AdminHomePage')
        elif 'client_section_title' in request.POST:
            client_section_title_form = clientSectionTitleForm(request.POST, instance=client_section_title)
            if client_section_title_form.is_valid():
                client_section_title_form.save()
                messages.success(request, 'Client section title updated successfully!')
                return redirect('AdminHomePage')
        elif 'project_section_title' in request.POST:
            project_section_title_form = projectSectionTitleForm(request.POST, instance=project_section_title)
            if project_section_title_form.is_valid():
                project_section_title_form.save()
                messages.success(request, 'Project section title updated successfully!')
                return redirect('AdminHomePage')
        elif 'testimonial_section_title' in request.POST:
            testimonial_section_title_form = testimonialSectionTitleForm(request.POST, instance=testimonial_section_title)
            if testimonial_section_title_form.is_valid():
                testimonial_section_title_form.save()
                messages.success(request, 'Testimonial section title updated successfully!')
                return redirect('AdminHomePage')
        elif 'pricing_section_title' in request.POST:
            pricing_section_title_form = pricingSectionTitleForm(request.POST, instance=pricing_section_title)
            if pricing_section_title_form.is_valid():
                pricing_section_title_form.save()
                messages.success(request, 'Pricing section title updated successfully!')
                return redirect('AdminHomePage')
        elif 'team_section_title' in request.POST:
            team_section_title_form = teamSectionTitleForm(request.POST, instance=team_section_title)
            if team_section_title_form.is_valid():
                team_section_title_form.save()
                messages.success(request, 'Team section title updated successfully!')
                return redirect('AdminHomePage')
        elif 'blog_section_title' in request.POST:
            blog_section_title_form = blogSectionTitleForm(request.POST, instance=blog_section_title)
            if blog_section_title_form.is_valid():
                blog_section_title_form.save()
                messages.success(request, 'Blog section title updated successfully!')
                return redirect('AdminHomePage')
        else:
            return redirect('AdminHomePage')
    else:
        form = aboutSectionForm(instance = homeabout)
        SeoForm = homePageSEOForm(instance = homeSEO)
        service_section_title_form = serviceSectionTitleForm(instance=service_section_title)
        funfact_section_title_form = funfactSectionTitleForm(instance=funfact_section_title)
        client_section_title_form = clientSectionTitleForm(instance=client_section_title)
        project_section_title_form = projectSectionTitleForm(instance=project_section_title)
        testimonial_section_title_form = testimonialSectionTitleForm(instance=testimonial_section_title)
        pricing_section_title_form = pricingSectionTitleForm(instance=pricing_section_title)
        team_section_title_form = teamSectionTitleForm(instance=team_section_title)
        blog_section_title_form = blogSectionTitleForm(instance=blog_section_title)
        
    context = {
        'title' : 'Home Page',
        'form' : form,
        'SeoForm' : SeoForm,
        'homeabout' : homeabout,

        'service_section_title' : service_section_title,
        'funfact_section_title' : funfact_section_title,
        'client_section_title' : client_section_title,
        'project_section_title' : project_section_title,
        'testimonial_section_title' : testimonial_section_title,
        'pricing_section_title' : pricing_section_title,
        'team_section_title' : team_section_title,
        'blog_section_title' : blog_section_title,

        'service_section_title_form' : service_section_title_form,
        'funfact_section_title_form' : funfact_section_title_form,
        'client_section_title_form' : client_section_title_form,
        'project_section_title_form' : project_section_title_form,
        'testimonial_section_title_form' : testimonial_section_title_form,
        'pricing_section_title_form' : pricing_section_title_form,
        'team_section_title_form' : team_section_title_form,
        'blog_section_title_form' : blog_section_title_form,
    }
    return render(request, 'dashboard/main/pages/home.html', context)

@login_required(login_url='logIn')
@admin_role_required
def AdminAboutPage(request):
    aboutSection = aboutPage.objects.first()
    aboutSEO = aboutPageSEO.objects.first()
    funfact_section_title = funfactSectionTitle.objects.first()
    testimonial_section_title = testimonialSectionTitle.objects.first()
    team_section_title = teamSectionTitle.objects.first()
    blog_section_title = blogSectionTitle.objects.first()

    if request.method == 'POST':
        if 'subtitle' in request.POST:
            form = aboutPageForm(request.POST, request.FILES, instance=aboutSection)
            if form.is_valid():
                form.save()
                messages.success(request, 'About page updated successfully!')
                return redirect('AdminAboutPage')
        elif 'meta_title' in request.POST:
            SeoForm = aboutPageSEOForm(request.POST, request.FILES, instance = aboutSEO)
            if SeoForm.is_valid():
                SeoForm.save()
                messages.success(request, 'About page seo updated successfully!')
                return redirect('AdminAboutPage')   
        elif 'funfact_section_title' in request.POST:
            funfact_section_title_form = funfactSectionTitleForm(request.POST, instance=funfact_section_title)
            if funfact_section_title_form.is_valid():
                funfact_section_title_form.save()
                messages.success(request, 'Fun Fact section title updated successfully!')
                return redirect('AdminAboutPage')
        elif 'testimonial_section_title' in request.POST:
            testimonial_section_title_form = testimonialSectionTitleForm(request.POST, instance=testimonial_section_title)
            if testimonial_section_title_form.is_valid():
                testimonial_section_title_form.save()
                messages.success(request, 'Testimonial section title updated successfully!')
                return redirect('AdminAboutPage')
        elif 'team_section_title' in request.POST:
            team_section_title_form = teamSectionTitleForm(request.POST, instance=team_section_title)
            if team_section_title_form.is_valid():
                team_section_title_form.save()
                messages.success(request, 'Team section title updated successfully!')
                return redirect('AdminAboutPage')
        elif 'blog_section_title' in request.POST:
            blog_section_title_form = blogSectionTitleForm(request.POST, instance=blog_section_title)
            if blog_section_title_form.is_valid():
                blog_section_title_form.save()
                messages.success(request, 'Blog section title updated successfully!')
                return redirect('AdminAboutPage')
        else:
            return redirect('AdminAboutPage')
    else:
        form = aboutPageForm(instance=aboutSection)
        SeoForm = aboutPageSEOForm(instance=aboutSEO)
        funfact_section_title_form = funfactSectionTitleForm(instance=funfact_section_title)
        testimonial_section_title_form = testimonialSectionTitleForm(instance=testimonial_section_title)
        team_section_title_form = teamSectionTitleForm(instance=team_section_title)
        blog_section_title_form = blogSectionTitleForm(instance=blog_section_title)

    context = {
        'title' : 'About Page',
        'form' : form,
        'SeoForm' : SeoForm,

        'funfact_section_title' : funfact_section_title,
        'testimonial_section_title' : testimonial_section_title,
        'team_section_title' : team_section_title,
        'blog_section_title' : blog_section_title,

        'funfact_section_title_form' : funfact_section_title_form,
        'testimonial_section_title_form' : testimonial_section_title_form,
        'team_section_title_form' : team_section_title_form,
        'blog_section_title_form' : blog_section_title_form,
    }
    return render(request, 'dashboard/main/pages/about.html', context)

@login_required(login_url='logIn')
@admin_role_required
def AdminServicePage(request):
    serviceSEO = servicePageSEO.objects.first()
    service_section_title = serviceSectionTitle.objects.first()
    testimonial_section_title = testimonialSectionTitle.objects.first()
    pricing_section_title = pricingSectionTitle.objects.first()

    if request.method == 'POST':
        if 'meta_title' in request.POST:
            SeoForm = servicePageSEOForm(request.POST, instance = serviceSEO)
            if SeoForm.is_valid():
                SeoForm.save()
                messages.success(request, 'Service page seo updated successfully!')
                return redirect('AdminServicePage')
        elif 'service_section_title' in request.POST:
            service_section_title_form = serviceSectionTitleForm(request.POST, instance=service_section_title)
            if service_section_title_form.is_valid():
                service_section_title_form.save()
                messages.success(request, 'Service section title updated successfully!')
                return redirect('AdminServicePage')
        elif 'testimonial_section_title' in request.POST:
            testimonial_section_title_form = testimonialSectionTitleForm(request.POST, instance=testimonial_section_title)
            if testimonial_section_title_form.is_valid():
                testimonial_section_title_form.save()
                messages.success(request, 'Testimonial section title updated successfully!')
                return redirect('AdminServicePage')
        elif 'pricing_section_title' in request.POST:
            pricing_section_title_form = pricingSectionTitleForm(request.POST, instance=pricing_section_title)
            if pricing_section_title_form.is_valid():
                pricing_section_title_form.save()
                messages.success(request, 'Pricing section title updated successfully!')
                return redirect('AdminServicePage')
    else:
        SeoForm = servicePageSEOForm(instance = serviceSEO)
        service_section_title_form = serviceSectionTitleForm(instance=service_section_title)
        testimonial_section_title_form = testimonialSectionTitleForm(instance=testimonial_section_title)
        pricing_section_title_form = pricingSectionTitleForm(instance=pricing_section_title)
    
    context = {
        'title' : 'Service Page',
        'SeoForm' : SeoForm,

        'service_section_title' : service_section_title,
        'testimonial_section_title' : testimonial_section_title,
        'pricing_section_title' : pricing_section_title,

        'service_section_title_form' : service_section_title_form,
        'testimonial_section_title_form' : testimonial_section_title_form,
        'pricing_section_title_form' : pricing_section_title_form,
    }
    return render(request, 'dashboard/main/pages/service.html', context)

@login_required(login_url='logIn')
@admin_role_required
def AdminProjectPage(request):
    projectSEO = projectPageSEO.objects.first()
    project_section_title = projectSectionTitle.objects.first()
    if request.method == 'POST':
        if 'meta_title' in request.POST:
            SeoForm = projectPageSEOForm(request.POST, instance = projectSEO)
            if SeoForm.is_valid():
                SeoForm.save()
                messages.success(request, 'Project page seo updated successfully!')
                return redirect('AdminProjectPage')
        elif 'project_section_title' in request.POST:
            project_section_title_form = projectSectionTitleForm(request.POST, instance=project_section_title)
            if project_section_title_form.is_valid():
                project_section_title_form.save()
                messages.success(request, 'Project section title updated successfully!')
                return redirect('AdminProjectPage')
    
    else:
        SeoForm = projectPageSEOForm(instance =  projectSEO)
        project_section_title_form = projectSectionTitleForm(instance=project_section_title)
    context = {
        'title' : 'Project Page',
        'SeoForm' : SeoForm,

        'project_section_title' : project_section_title,
        'project_section_title_form' : project_section_title_form,
    }
    return render(request, 'dashboard/main/pages/project.html', context)

@login_required(login_url='logIn')
@admin_role_required
def AdminPricingPage(request):
    pricingSEO = pricingPageSEO.objects.first()
    pricing_section_title = pricingSectionTitle.objects.first()
    blog_section_title = blogSectionTitle.objects.first()
    if request.method == 'POST':
        if 'meta_title' in request.POST:
            SeoForm = pricingPageSEOForm(request.POST, instance = pricingSEO)
            if SeoForm.is_valid():
                SeoForm.save()
                messages.success(request, 'Pricing page seo updated successfully!')
                return redirect('AdminPricingPage')
        elif 'pricing_section_title' in request.POST:
            pricing_section_title_form = pricingSectionTitleForm(request.POST, instance=pricing_section_title)
            if pricing_section_title_form.is_valid():
                pricing_section_title_form.save()
                messages.success(request, 'Pricing section title updated successfully!')
                return redirect('AdminPricingPage')
        elif 'blog_section_title' in request.POST:
            blog_section_title_form = blogSectionTitleForm(request.POST, instance=blog_section_title)
            if blog_section_title_form.is_valid():
                blog_section_title_form.save()
                messages.success(request, 'Blog section title updated successfully!')
                return redirect('AdminPricingPage')
    
    else:
        SeoForm = pricingPageSEOForm(instance =  pricingSEO)
        pricing_section_title_form = pricingSectionTitleForm(instance=pricing_section_title)
        blog_section_title_form = blogSectionTitleForm(instance=blog_section_title)
    context = {
        'title' : 'Pricing Page',
        'SeoForm' : SeoForm,

        'pricing_section_title' : pricing_section_title,
        'blog_section_title' : blog_section_title,

        'pricing_section_title_form' : pricing_section_title_form,
        'blog_section_title_form' : blog_section_title_form,
    }
    return render(request, 'dashboard/main/pages/pricing.html', context)

@login_required(login_url='logIn')
@admin_role_required
def AdminContactPage(request):
    contactSEO = contactPageSEO.objects.first()
    contact_form_title = ContactFormTitle.objects.first()
    subscriber_form_title = SubscriberFormTitle.objects.first()
    if request.method == 'POST':
        if 'meta_title' in request.POST:
            SeoForm = contactPageSEOForm(request.POST, instance = contactSEO)
            if SeoForm.is_valid():
                SeoForm.save()
                messages.success(request, 'Contact page seo updated successfully!')
                return redirect('AdminContactPage')
        elif 'contact_form_title' in request.POST:
            contact_form_title_form = ContactFormTitleForm(request.POST, instance=contact_form_title)
            if contact_form_title_form.is_valid():
                contact_form_title_form.save()
                messages.success(request, 'Contact form title updated successfully!')
                return redirect('AdminContactPage')
        elif 'subscriber_form_title' in request.POST:
            subscriber_form_title_form = SubscriberFormTitleForm(request.POST, instance=subscriber_form_title)
            if subscriber_form_title_form.is_valid():
                subscriber_form_title_form.save()
                messages.success(request, 'Subscriber form title updated successfully!')
                return redirect('AdminContactPage')
    
    else:
        SeoForm = contactPageSEOForm(instance =  contactSEO)
        contact_form_title_form = ContactFormTitleForm(instance=contact_form_title)
        subscriber_form_title_form = SubscriberFormTitleForm(instance=subscriber_form_title)

    context = {
        'title' : 'Contact Page',
        'SeoForm' : SeoForm,

        'contact_form_title' : contact_form_title,
        'contact_form_title_form' : contact_form_title_form,
        'subscriber_form_title' : subscriber_form_title,
        'subscriber_form_title_form' : subscriber_form_title_form,
    }
    return render(request, 'dashboard/main/pages/contact.html', context)

@login_required(login_url='logIn')
@admin_role_required
def AdminBlogPage(request):
    blogSEO = blogPageSEO.objects.first()
    if request.method == 'POST':
        if 'meta_title' in request.POST:
            SeoForm = blogPageSEOForm(request.POST, instance = blogSEO)
            if SeoForm.is_valid():
                SeoForm.save()
                messages.success(request, 'Blog page seo updated successfully!')
                return redirect('AdminBlogPage')
    else:
        SeoForm = blogPageSEOForm(instance = blogSEO)

    context = {
        'title' : 'Blog Page',
        'SeoForm' : SeoForm,
    }
    return render(request, 'dashboard/main/pages/blog.html', context)

@login_required(login_url='logIn')
@admin_role_required
def AdminTermsPage(request):
    term = Terms.objects.first()
    if request.method == 'POST':
        form = termsForm(request.POST, instance=term)
        if form.is_valid():
            form.save()
            messages.success(request, 'Terms & condition updated successfully')
            return redirect('AdminTermsPage')
    else:
        form = termsForm(instance=term)

    context = {
        'title' : 'Terms Page',
        'form' : form,
    }
    return render(request, 'dashboard/main/pages/terms.html', context)

@login_required(login_url='logIn')
@admin_role_required
def AdminPolicyPage(request):
    policy = Policy.objects.first()
    if request.method == 'POST':
        form = policyForm(request.POST, instance=policy)
        if form.is_valid():
            form.save()
            messages.success(request, 'Privacy policy updated successfully')
            return redirect('AdminPolicyPage')
    else:
        form = policyForm(instance=policy)

    context = {
        'title' : 'Policy Page',
        'form' : form,
    }
    return render(request, 'dashboard/main/pages/policy.html', context)

# Error Page
def error_404(request, exception):
    return render(request, 'error/404.html', status=404)

def error_500(request):
    return render(request, 'error/500.html', status=500)

    
        


