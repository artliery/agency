from django import forms
from apps.home.models import *

# Sliders Form
class sliderForm(forms.ModelForm):
    class Meta:
        model = sliderSection
        fields = '__all__'
        widgets = {
            'description' : forms.Textarea(attrs={'rows':5}),
        }
        
    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        # Add Bootstrap classes to form fields
        for field in self.fields.values():
            field.widget.attrs['class'] = 'form-control'

# Services Form
class serviceForm(forms.ModelForm):
    class Meta:
        model = serviceSection
        fields = '__all__'
        widgets = {
            'slug' : forms.TextInput(attrs={'readonly':'readonly'}),
            'fontawesome_icon_class' : forms.TextInput(attrs={'placeholder':'eg. fas fa-laptop-code'}),
            'show_call_now_widget' : forms.CheckboxInput(attrs={'class': 'form-check-input'}),
        }
        
    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        # Add Bootstrap classes to form fields
        for field in self.fields.values():
            if isinstance(field.widget, forms.CheckboxInput):
                continue  # Skip checkboxes as they already have form-check-input
            field.widget.attrs['class'] = 'form-control'

# About Section Form
class aboutSectionForm(forms.ModelForm):
    class Meta:
        model = aboutSection
        fields = '__all__'
        widgets = {
            'long_description' : forms.Textarea(attrs={'rows':4}),
            'experience' : forms.TextInput(attrs={'placeholder' : 'eg. Since 2005.'})
        }
        
    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        # Add Bootstrap classes to form fields
        for field in self.fields.values():
            field.widget.attrs['class'] = 'form-control' 
            
# FunFact Section Form
class funFactSectionForm(forms.ModelForm):
    class Meta:
        model = funFactSection
        fields = '__all__'
        
    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        # Add Bootstrap classes to form fields
        for field in self.fields.values():
            field.widget.attrs['class'] = 'form-control' 
            
# Project Section and Project Category Form
class projectCategoryForm(forms.ModelForm):
    class Meta:
        model = projectCategory
        fields = '__all__'
        widgets = {
            'slug' : forms.TextInput(attrs={'readonly':'readonly'})
        }
        
    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        # Add Bootstrap classes to form fields
        for field in self.fields.values():
            field.widget.attrs['class'] = 'form-control' 

class projectSectionForm(forms.ModelForm):
    class Meta:
        model = projectSection
        fields = '__all__'
        widgets = {
            'slug' : forms.TextInput(attrs={'readonly':'readonly'})
        }
        
    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        # Add Bootstrap classes to form fields
        for field in self.fields.values():
            field.widget.attrs['class'] = 'form-control' 
            
# Client Secton Form
class clientSectionForm(forms.ModelForm):
    class Meta:
        model = clientSection
        fields = '__all__'
        
    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        # Add Bootstrap classes to form fields
        for field in self.fields.values():
            field.widget.attrs['class'] = 'form-control' 

# Testimonial Section Form
class testimonialSectionForm(forms.ModelForm):
    class Meta:
        model = testimonialsSection
        fields = '__all__'
        widgets = {
            'description' : forms.Textarea(attrs={'rows':5}),
        }
        
    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        # Add Bootstrap classes to form fields
        for field in self.fields.values():
            field.widget.attrs['class'] = 'form-control'  
        
# ===============> Home Page SEO Form <===============   
class homePageSEOForm(forms.ModelForm):
    class Meta:
        model = homePageSEO
        fields = '__all__'
        
    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        # Add Bootstrap classes to form fields
        for field in self.fields.values():
            field.widget.attrs['class'] = 'form-control'   


class funfactSectionTitleForm(forms.ModelForm):
    class Meta:
        model = funfactSectionTitle
        fields = '__all__'
    
    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        for field in self.fields.values():
            field.widget.attrs['class'] = 'form-control'
            

class clientSectionTitleForm(forms.ModelForm):
    class Meta:
        model = clientSectionTitle
        fields = '__all__'
    
    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        for field in self.fields.values():
            field.widget.attrs['class'] = 'form-control'
            
class testimonialSectionTitleForm(forms.ModelForm):
    class Meta:
        model = testimonialSectionTitle
        fields = '__all__'
    
    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        for field in self.fields.values():
            field.widget.attrs['class'] = 'form-control'
            
class projectSectionTitleForm(forms.ModelForm):
    class Meta:
        model = projectSectionTitle
        fields = '__all__'  
    
    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        for field in self.fields.values():
            field.widget.attrs['class'] = 'form-control'

class teamSectionTitleForm(forms.ModelForm):
    class Meta:
        model = teamSectionTitle
        fields = '__all__'
    
    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        for field in self.fields.values():
            field.widget.attrs['class'] = 'form-control'
            
class pricingSectionTitleForm(forms.ModelForm):
    class Meta:
        model = pricingSectionTitle
        fields = '__all__'
    
    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        for field in self.fields.values():
            field.widget.attrs['class'] = 'form-control'
            
class blogSectionTitleForm(forms.ModelForm):
    class Meta:
        model = blogSectionTitle
        fields = '__all__'
    
    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        for field in self.fields.values():
            field.widget.attrs['class'] = 'form-control'

class serviceSectionTitleForm(forms.ModelForm):
    class Meta:
        model = serviceSectionTitle
        fields = '__all__'
        
    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        for field in self.fields.values():
            field.widget.attrs['class'] = 'form-control'

