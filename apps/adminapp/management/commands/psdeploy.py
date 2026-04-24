from django.core.management.base import BaseCommand
from django.core.management import call_command
from django.contrib.auth import get_user_model

class Command(BaseCommand):
    help = 'Deploy command to run migrations, collect static files and create superuser'

    def handle(self, *args, **kwargs):
        # Run migrations
        self.stdout.write('Running migrations...')
        call_command('makemigrations')
        call_command('migrate')
        
        # Collect static files with ignore pattern for .map files
        self.stdout.write('Collecting static files...')
        call_command('collectstatic', '--noinput', '--ignore', '*.map')
        
        # Create superuser if it doesn't exist
        User = get_user_model()
        username = 'admin'
        email = 'admin@example.com'
        password = '123456'
        
        if not User.objects.filter(username=username).exists():
            self.stdout.write('Creating superuser...')
            User.objects.create_superuser(username=username, email=email, password=password)
            self.stdout.write(self.style.SUCCESS(f'Superuser "{username}" created successfully'))
        else:
            self.stdout.write('Superuser already exists')
        
        self.stdout.write(self.style.SUCCESS('Deployment tasks completed successfully!'))
