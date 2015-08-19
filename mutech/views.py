from django.shortcuts import render, get_object_or_404, render_to_response
from django import forms
from django.http import HttpResponse, HttpResponseRedirect
from mutech.models import *

def index(request):
	slider_list = slider.objects.all()
	recent_project = recentproject.objects.all()
	quote_list = homepagequote.objects.all()
	post_list = latestpost.objects.all()
	context = {'slider_list':slider_list ,'recent_project':recent_project ,'quote_list':quote_list ,'post_list':post_list}
	return render(request, 'mutech/index.html',context)

def header(request):
	return render(request, 'mutech/header.html')

def footer(request):
	post_list = latestpost.objects.all()
	context = {'post_list':post_list}
	return render(request, 'mutech/footer.html', context)

def studentproject_info(request):
	project_list = studentproject.objects.all()
	branch_list = branch.objects.all()
	post_list = latestpost.objects.all()
	context = {'branch_list':branch_list ,'project_list':project_list ,'post_list':post_list}
	return render(request, 'mutech/student_project.html', context)


def filteron_studentproject(request, pk):
	#current_branch = branch.objects.get(branch_title=b_name)
	project_list = studentproject.objects.all().filter(project_branch_id=pk)
	branch_list = branch.objects.all()
	post_list = latestpost.objects.all()
	context = {'branch_list':branch_list ,'project_list':project_list ,'post_list':post_list}
	return render(request, 'mutech/student_project.html', context)

def industrialproject_info(request):
	project_list = industrialproject.objects.all()
	post_list = latestpost.objects.all()
	context = {'project_list':project_list ,'post_list':post_list}
	return render(request, 'mutech/industrial_project.html', context)

def training_info(request):
	training_list = training.objects.all()
	post_list = latestpost.objects.all()
	context = {'training_list':training_list ,'post_list':post_list}
	return render(request, 'mutech/training.html', context)

def workshop_info(request):
	workshop_list = workshop.objects.all()
	post_list = latestpost.objects.all()
	context = {'workshop_list':workshop_list ,'post_list':post_list}
	return render(request, 'mutech/workshop.html', context)

def aboutus_info(request):
	aboutus_list = aboutus.objects.all()
	ourteam_list = ourteam.objects.all()
	post_list = latestpost.objects.all()
	context = {'aboutus_list':aboutus_list ,'ourteam_list':ourteam_list ,'post_list':post_list}
	return render(request, 'mutech/aboutus.html',context)

def contact(request):
	if request.method == 'GET':
		post_list = latestpost.objects.all()
		context = {'post_list':post_list}
		return render(request, 'mutech/contact.html',context)
	else:
		''' -----fetching the data from the user and saving it in database---- '''
		data = contactus(fname= request.POST['fname'], subject= request.POST['subname'], email = request.POST['email'], phone_no = request.POST['phone_no'], message = request.POST['message'])
		data.save()
		return HttpResponseRedirect('#')




						    
