from django import forms 
from apps.contact.models import *

# # # # # # # # # # # # # # # # # #
    # Contact Form #
# # # # # # # # # # # # # # # # # #
class ContactForm(forms.ModelForm):
    class Meta:
        model = Contact
        fields = '__all__'
    
    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        for field in self.fields.values():
            field.widget.attrs['class'] = 'form-control'

# # # # # # # # # # # # # # # # # #
    # Subscriber Form #
# # # # # # # # # # # # # # # # # #
class SubscribeForm(forms.ModelForm):
    class Meta:
        model = Subscriber
        fields = '__all__'

    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        for field in self.fields.values():
            field.widget.attrs['class'] = 'form-control'

# # # # # # # # # # # # # # # # # #
    # Contact Page SEO Form #
# # # # # # # # # # # # # # # # # #
class contactPageSEOForm(forms.ModelForm):
    class Meta:
        model = contactPageSEO
        fields = '__all__'

    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        for field in self.fields.values():
            field.widget.attrs['class'] = 'form-control'

# # # # # # # # # # # # # # # # # #
    # Contact Form Title Form #
# # # # # # # # # # # # # # # # # #
class ContactFormTitleForm(forms.ModelForm):
    class Meta:
        model = ContactFormTitle
        fields = '__all__'

    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        for field in self.fields.values():
            field.widget.attrs['class'] = 'form-control'

class SubscriberFormTitleForm(forms.ModelForm):
    class Meta:
        model = SubscriberFormTitle
        fields = '__all__'

    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        for field in self.fields.values():
            field.widget.attrs['class'] = 'form-control'