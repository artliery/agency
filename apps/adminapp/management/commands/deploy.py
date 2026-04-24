import subprocess
from django.core.management.base import BaseCommand
from django.conf import settings
from django.core.management import call_command

class Command(BaseCommand):
    help = 'This will create tables in database and import data to your system and create a superuser.'

    def handle(self, *args, **options):

        # MySQL database configuration
        db_settings = settings.DATABASES['default']
        db_name = db_settings['NAME']
        db_user = db_settings['USER']
        db_password = db_settings['PASSWORD']

        # Import data
        self.stdout.write('Importing data from data.sql to MySQL...')
        try:
            subprocess.run(['mysql', '-u', db_user, '-p{}'.format(db_password), '-h', 'localhost', db_name], input=open('data.sql', 'rb').read().decode('utf-8'), check=True, text=True, cwd=settings.BASE_DIR)
            self.stdout.write(self.style.SUCCESS(f'Data imported to {db_name} successfully.'))

            # Collect static files with ignore patterns for source maps
            self.stdout.write('Collecting static files...')
            try:
                call_command(
                    'collectstatic',
                    '--noinput',
                    '--ignore', '*.map',  # Ignore source map files
                    verbosity=1
                )
                self.stdout.write(self.style.SUCCESS('Static files collected successfully.'))
            except Exception as e:
                self.stdout.write(self.style.ERROR(f'Error collecting static files: {e}'))

            self.stdout.write(self.style.SUCCESS('Installation successfully completed.'))
        except subprocess.CalledProcessError as e:
            self.stdout.write(self.style.ERROR(f'Error importing data from data.sql to MySQL: {e}'))

