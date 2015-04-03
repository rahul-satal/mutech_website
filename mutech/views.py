from django.shortcuts import render, get_object_or_404, render_to_response
from django.http import HttpResponse, HttpResponseRedirect
from django.core.urlresolvers import reverse
from django.utils import timezone
from django.core import serializers
from django.template import RequestContext, loader, context
from django import forms
import json
import mutech.models
from mutech.models import training, project, product



def index(request):
    return render(request, 'mutech/index.html')

def header(request):
	return render(request, 'mutech/header.html')

def footer(request):
	return render(request, 'mutech/footer.html')

def project_info(request):
	return render(request, 'mutech/project.html')

def training_info(request):
	return render(request, 'mutech/training.html')

def product_info(request):
	product_qlist=product.objects.all()
	context = {'product_qlist':product_qlist}
	return render(request, 'mutech/product.html', context)

def aboutus(request):
	return render(request, 'mutech/aboutus.html')

def contact(request):
	return render(request, 'mutech/contact.html')

						    