from django import forms
from apps.settings.models import *

class websiteSettingForm(forms.ModelForm):
    class Meta:
        model = websiteSetting
        fields = '__all__'
        widgets = {
            'facebook_pixel_code' : forms.Textarea(attrs={'rows':6}),
            'facebook_chat_code' : forms.Textarea(attrs={'rows':6}),
            'map_iframe' : forms.Textarea(attrs={'rows':4}),
            'custom_css' : forms.Textarea(attrs={'rows':6}),
            'custom_js' : forms.Textarea(attrs={'rows':6}),
            'whatsapp_is_active' : forms.CheckboxInput(attrs={'class': 'form-check-input'}),
            'facebook_chat_is_active' : forms.CheckboxInput(attrs={'class': 'form-check-input'}),
            'slider_particle_is_active' : forms.CheckboxInput(attrs={'class': 'form-check-input'}),
            'default_menu_is_active' : forms.CheckboxInput(attrs={'class': 'form-check-input'}),
            'magic_cursor_is_active' : forms.CheckboxInput(attrs={'class': 'form-check-input'}),
            'show_call_now_widget' : forms.CheckboxInput(attrs={'class': 'form-check-input'}),
            'primary_color': forms.TextInput(attrs={'type': 'color', 'class': 'form-control form-control-color'}),
            'secondary_color': forms.TextInput(attrs={'type': 'color', 'class': 'form-control form-control-color'}),
        }
    
    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        for field_name, field in self.fields.items():
            if isinstance(field.widget, forms.CheckboxInput):
                continue  # Skip checkboxes as they already have form-check-input
            if field_name in ['primary_color', 'secondary_color']:
                if self.instance and getattr(self.instance, field_name):
                    color_value = getattr(self.instance, field_name)
                    field.initial = f'#{color_value.lstrip("#")}'
                else:
                    field.initial = '#75dab4'
            else:
                field.widget.attrs['class'] = 'form-control'  # Add form-control to all non-checkbox fields

class SeoSettingForm(forms.ModelForm):
    class Meta:
        model = SeoSetting
        fields = '__all__'
        widgets = {
            'meta_description' : forms.Textarea(attrs={'rows':3}),
            'seo_keywords' : forms.Textarea(attrs={'rows':4, 'placeholder' : 'software,application,marketer,developer'}),
        }

    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        for field in self.fields.values():
            field.widget.attrs['class'] = 'form-control'

class headerFooterSettingForm(forms.ModelForm):
    class Meta:
        model = headerFooterSetting
        fields = '__all__'
        widgets = {
            'footer_col1_description' : forms.Textarea(attrs={'rows':4}),
        }

    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        for field in self.fields.values():
            field.widget.attrs['class'] = 'form-control'


class templateForm(forms.ModelForm):
    class Meta:
        model = templateSettings
        fields = '__all__'