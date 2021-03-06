from django.shortcuts import render, get_object_or_404, render_to_response
from django import forms
from django.http import HttpResponse, HttpResponseRedirect
from mutech.models import *

def index(request):
	slider_list = slider.objects.all()
	news_list = news.objects.all()
	article_list = article.objects.all()
	context = {'slider_list':slider_list ,'news_list':news_list ,'article_list':article_list }
	return render(request, 'mutech/index.html',context)

def header(request):
	return render(request, 'mutech/header.html')

def footer(request):
	return render(request, 'mutech/footer.html')

def project_info(request):
	project_list = project.objects.all()
	branch_list = branch.objects.all()
	subbranch_list = subbranch.objects.all()
	context = {'branch_list':branch_list , 'subbranch_list':subbranch_list ,'project_list':project_list }
	return render(request, 'mutech/project.html', context)


'''
def project_branch_info(request):
	branch_list = branch.objects.all()
	subbranch_list = subbranch.objects.all()
	context = {'branch_list':branch_list , 'subbranch_list':subbranch_list }
	return render(request, 'mutech/project_branch_info.html', context)
'''

def show_project(request):
	branch_list = branch.objects.all()
	subbranch_list = subbranch.objects.all()
	context = {'branch_list':branch_list , 'subbranch_list':subbranch_list }
	return render(request, 'mutech/show_project.html/1/', context)	


def training_info(request):
	training_list = training.objects.all()
	context = {'training_list':training_list}
	return render(request, 'mutech/training.html', context)

def product_info(request):
	#product_qlist=product.objects.values_list('product_title', flat= True)
	product_list = product.objects.all()
	context = {'product_list':product_list}
	return render(request, 'mutech/product.html', context)

def aboutus_info(request):
	aboutus_list = aboutus.objects.all()
	context = {'aboutus_list':aboutus_list}
	return render(request, 'mutech/aboutus.html',context)

def contact(request):
	if request.method == 'GET':
		return render(request, 'mutech/contact.html')
	else:
		''' -----fetching the data from the user and saving it in database---- '''
		data = contactus(fname= request.POST['fname'], lname= request.POST['lname'], email = request.POST['email'], phone_no = request.POST['phone_no'], message = request.POST['message'])
		data.save()
		return HttpResponseRedirect('#')

def detail(request, branch_id):
	project_list = project.objects.all()
	branch_list = branch.objects.all()
	subbranch_list = subbranch.objects.all()
	branchId = get_object_or_404(branch, pk=branch_id)
	context1 = {'branch_list':branch_list , 'subbranch_list':subbranch_list ,'project_list':project_list , 'branchId':branchId}

	return render(request, 'mutech/project.html', context1)


						    	