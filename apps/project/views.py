from django.shortcuts import render, get_object_or_404
from apps.home.models import projectSection, projectCategory, projectSectionTitle, blogSectionTitle
from apps.project.models import projectPageSEO
from apps.blog.models import Blogs
from django.core.paginator import Paginator, EmptyPage

def projectPageFront(request):
    seo = projectPageSEO.objects.first()
    project_categories = projectCategory.objects.all()
    projects = projectSection.objects.all().order_by('?')
    blogs = Blogs.objects.all().order_by('?')

    items_per_page = 9

    paginator = Paginator(projects, items_per_page)

    page_number = request.GET.get('page')

    project_section_title = projectSectionTitle.objects.first()
    blog_section_title = blogSectionTitle.objects.first()

    try:
        projects = paginator.get_page(page_number)
    except EmptyPage:
        projects = paginator.get_page(paginator.num_pages)

    context = {
        'seo': seo,
        'projects': projects,
        'project_categories': project_categories,
        'blogs': blogs,
        'project_section_title' : project_section_title,
        'blog_section_title' : blog_section_title,
    }

    return render(request, 'front/main/project.html', context)

def projectDetails(request, slug):
    project = get_object_or_404(projectSection, slug=slug)
    projects = projectSection.objects.exclude(slug=slug).order_by('?')

    context = {
        'project' : project,
        'projects' : projects,
    }
    return render(request, 'front/main/partial/project-details.html', context)

def error_404(request, exception):
    return render(request, 'error/404.html', status=404)