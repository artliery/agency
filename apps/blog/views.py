from django.shortcuts import render, get_object_or_404
from apps.blog.models import *
from django.core.paginator import Paginator

def blogPageFront(request):
    categories = blogCategory.objects.all().order_by('?')
    blogs_list = Blogs.objects.all().order_by('-created_at')

    # Search functionality
    search_query = request.GET.get('search')
    if search_query:
        blogs_list = blogs_list.filter(title__icontains=search_query)

    # Pagination
    paginator = Paginator(blogs_list, 6)
    page = request.GET.get('page')
    blogs = paginator.get_page(page)

    seo = blogPageSEO.objects.first()

    context = {
        'title': 'Blogs',
        'blogs': blogs,
        'categories': categories,
        'seo' : seo,
    }
    return render(request, 'front/main/blog.html', context)

def blogDetails(request, slug):
    blog = get_object_or_404(Blogs, slug=slug)
    blogs = Blogs.objects.all().order_by('-created_at')
    categories = blogCategory.objects.all().order_by('?')
    context = {
        'blog': blog,
        'blogs' : blogs,
        'categories' : categories,
    }
    return render(request, 'front/main/partial/blog-details.html', context)

def blogsByCategory(request, category_slug):
    categories = blogCategory.objects.all().order_by('?')
    category = get_object_or_404(blogCategory, slug=category_slug)
    blogs_list = Blogs.objects.filter(category=category).order_by('-created_at')

    # Pagination
    paginator = Paginator(blogs_list, 6)
    page = request.GET.get('page')
    blogs = paginator.get_page(page)

    context = {
        'title': category.title,
        'blogs': blogs,
        'category': category,
        'categories' : categories,
    }
    return render(request, 'front/main/partial/blog_category.html', context)

def error_404(request, exception):
    return render(request, 'error/404.html', status=404)