from django.db import models

# # # # # # # # # # # # # # # # # #
    # Contact Model #
# # # # # # # # # # # # # # # # # #
class Contact(models.Model):
    name = models.CharField(max_length=100)
    email = models.EmailField()
    phone = models.CharField(max_length=100, blank=True, null=True)
    subject = models.CharField(max_length=100)
    message = models.TextField()
    created_at = models.DateField(auto_now_add=True)

    def __str__(self):
        return self.name

# # # # # # # # # # # # # # # # # #
    # Subscriber Model #
# # # # # # # # # # # # # # # # # #
class Subscriber(models.Model):
    email = models.EmailField()
    created_at = models.DateField(auto_now_add=True)
    time = models.TimeField(auto_now_add=True)

    def __str__(self):
        return self.email
    
# # # # # # # # # # # # # # # # # #
      # Contact Page SEO #
# # # # # # # # # # # # # # # # # #
class contactPageSEO(models.Model):
    meta_title = models.CharField(max_length=500, blank=True, null=True)
    meta_description = models.CharField(max_length=1000, blank=True, null=True)
    
    def __str__(self):
        return self.meta_title

#===== Contact Form Model =====#
class ContactFormTitle(models.Model):
    contact_form_title = models.CharField(max_length=100, blank=True, null=True, default='Have Any Questions')
    name_field_placeholder = models.CharField(max_length=100, blank=True, null=True, default='Enter your name')
    email_field_placeholder = models.CharField(max_length=100, blank=True, null=True, default='Enter your email')
    phone_field_placeholder = models.CharField(max_length=100, blank=True, null=True, default='Enter your phone')
    subject_field_placeholder = models.CharField(max_length=100, blank=True, null=True, default='Enter your subject')
    message_field_placeholder = models.CharField(max_length=100, blank=True, null=True, default='Enter your message')
    submit_button_text = models.CharField(max_length=100, blank=True, null=True, default='Send Message')
    phone_title = models.CharField(max_length=100, blank=True, null=True, default='Phone')
    email_title = models.CharField(max_length=100, blank=True, null=True, default='Email')
    location_title = models.CharField(max_length=100, blank=True, null=True, default='Location')

    def __str__(self):
        return self.contact_form_title
    
class SubscriberFormTitle(models.Model):
    top_title = models.CharField(max_length=100, blank=True, null=True, default='Get In Touch')
    middle_title = models.CharField(max_length=100, blank=True, null=True, default='Subscribe Our')
    bottom_title = models.CharField(max_length=100, blank=True, null=True, default='Newsletter')
    email_field_placeholder = models.CharField(max_length=100, blank=True, null=True, default='Enter your email')
    submit_button_text = models.CharField(max_length=100, blank=True, null=True, default='Subscribe')
    
    def __str__(self):
        return self.top_title