import os
import shutil
from django.core.management.base import BaseCommand

class Command(BaseCommand):
    help = 'Removes all migration files and __pycache__ directories'

    def handle(self, *args, **options):
        # Get the base project directory
        base_dir = os.getcwd()
        
        # Walk through all directories
        for root, dirs, files in os.walk(base_dir):
            # Delete migration files (except __init__.py)
            if 'migrations' in root:
                for file in files:
                    if file.endswith('.py') and file != '__init__.py':
                        file_path = os.path.join(root, file)
                        os.remove(file_path)
                        self.stdout.write(self.style.SUCCESS(f'Deleted: {file_path}'))
            
            # Delete __pycache__ folders
            if '__pycache__' in dirs:
                pycache_path = os.path.join(root, '__pycache__')
                shutil.rmtree(pycache_path)
                self.stdout.write(self.style.SUCCESS(f'Deleted: {pycache_path}'))

        self.stdout.write(self.style.SUCCESS('Successfully cleaned migrations and pycache!'))