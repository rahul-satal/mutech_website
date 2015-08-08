"""
WSGI config for mutech_website project.

It exposes the WSGI callable as a module-level variable named ``application``.

For more information on this file, see
https://docs.djangoproject.com/en/1.7/howto/deployment/wsgi/


import os
os.environ.setdefault("DJANGO_SETTINGS_MODULE", "mutech_website.settings")

from django.core.wsgi import get_wsgi_application
application = get_wsgi_application()

"""

# TURN ON THE VIRTUAL ENVIRONMENT FOR YOUR APPLICATION
activate_this = '/home/mutechrobotics/.virtualenvs/jango/bin/activate_this.py'
execfile(activate_this, dict(__file__=activate_this))
import os
import sys

# ADD YOUR PROJECT TO THE PYTHONPATH FOR THE PYTHON INSTANCE
path = '/home/mutechrobotics/mutech_website/'
if path not in sys.path:
    sys.path.append(path)

# IMPORTANTLY GO TO THE PROJECT DIR
os.chdir(path)

# TELL DJANGO WHERE YOUR SETTINGS MODULE IS LOCATED
os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'mutech_website.settings')

# IMPORT THE DJANGO SETUP - NEW TO 1.7
import django
django.setup()

# IMPORT THE DJANGO WSGI HANDLER TO TAKE CARE OF REQUESTS
import django.core.handlers.wsgi
application = django.core.handlers.wsgi.WSGIHandler()