from django.shortcuts import render
from mutech.models import product
from django.shortcuts import render_to_response



def index(request):
    return render(request, 'mutech/index.html')

def header(request):
	return render(request, 'mutech/header.html')

def footer(request):
	return render(request, 'mutech/footer.html')

def project(request):
	return render(request, 'mutech/project.html')

def training(request):
	return render(request, 'mutech/training.html')
'''
def product(request):
	product_name = product.product_title.filter(id = 1)
	context = {'product_key':product_name}
	return render(request, 'mutech/product.html')
'''
def product(request):	
	return render('mutech/product.html')
def aboutus(request):
	return render(request, 'mutech/aboutus.html')

def contact(request):
	return render(request, 'mutech/contact.html')

						    