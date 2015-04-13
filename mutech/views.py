from django.shortcuts import render, get_object_or_404, render_to_response
from mutech.models import *



def index(request):
    return render(request, 'mutech/index.html')

def header(request):
	return render(request, 'mutech/header.html')

def footer(request):
	return render(request, 'mutech/footer.html')

def project_info(request):
	project_list = project.objects.all()
	branch_list = branch.objects.all()
	context = {'project_list':project_list , 'branch_list':branch_list }
	return render(request, 'mutech/project.html', context)

def project_branch_info(request):
	branch_list = branch.objects.all()
	context = {'branch_list':branch_list }
	return render(request, 'mutech/project_branch_info.html', context)


def training_info(request):
	return render(request, 'mutech/training.html')

def product_info(request):
	#product_qlist=product.objects.values_list('product_title', flat= True)
	product_list = product.objects.all()
	context = {'product_list':product_list}
	return render(request, 'mutech/product.html', context)

def aboutus(request):
	return render(request, 'mutech/aboutus.html')

def contact(request):
	return render(request, 'mutech/contact.html')

						    