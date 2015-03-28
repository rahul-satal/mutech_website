from django.shortcuts import render


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

def product(request):
	return render(request, 'mutech/product.html')

def aboutus(request):
	return render(request, 'mutech/aboutus.html')

def contact(request):
	return render(request, 'mutech/contact.html')

						    