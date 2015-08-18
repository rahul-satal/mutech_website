from django.db import models
from django.core.validators import RegexValidator
import warnings
warnings.filterwarnings("ignore", "Field 'subbranch_title' doesn't have a default value")


class branch(models.Model):
    branch_title = models.CharField(max_length=50)

    def __unicode__(self):
        	return str(self.branch_title)


class training(models.Model):
	training_title = models.CharField(max_length=50)
	training_desc = models.TextField(max_length=5000)
	training_duration = models.CharField(max_length=50,default="2 Weeks")
	training_pdf_link = models.CharField(max_length=200,default="https://docs.google.com/viewer?a=v&pid=sites&srcid=ZGVmYXVsdGRvbWFpbnxkcmNoaXRyYWRoYXdhbGV8Z3g6NDQzYzkwN2Y3YzY2ZWRjYw")
	training_price = models.IntegerField(default=2000)

	def __unicode__(self):
        	return str(self.training_title)

class studentproject(models.Model):
	project_title = models.CharField(max_length=50)
	project_image = models.ImageField(upload_to="Images/Project")
	project_desc = models.TextField(max_length=50000)
	project_duration = models.CharField(max_length=50,default="2 Weeks")
	project_price = models.IntegerField(default=2000)
	project_branch = models.ForeignKey(branch)
	project_pdf_link = models.CharField(max_length=200,default="https://docs.google.com/viewer?a=v&pid=sites&srcid=ZGVmYXVsdGRvbWFpbnxkcmNoaXRyYWRoYXdhbGV8Z3g6NDQzYzkwN2Y3YzY2ZWRjYw")

	def __unicode__(self):
        	return str(self.project_title)

class recentproject(models.Model):
	project_title = models.CharField(max_length=50)
	project_image = models.ImageField(upload_to="Images/Project")
	project_desc = models.TextField(max_length=50000)
	project_price = models.IntegerField(default=2000)
	project_pdf_link = models.CharField(max_length=200,default="https://docs.google.com/viewer?a=v&pid=sites&srcid=ZGVmYXVsdGRvbWFpbnxkcmNoaXRyYWRoYXdhbGV8Z3g6NDQzYzkwN2Y3YzY2ZWRjYw")

	def __unicode__(self):
        	return str(self.project_title)

class industrialproject(models.Model):
	project_title = models.CharField(max_length=50)
	project_image = models.ImageField(upload_to="Images/Project")
	project_desc = models.TextField(max_length=50000)
	project_price = models.IntegerField(default=2000)
	project_pdf_link = models.CharField(max_length=200,default="https://docs.google.com/viewer?a=v&pid=sites&srcid=ZGVmYXVsdGRvbWFpbnxkcmNoaXRyYWRoYXdhbGV8Z3g6NDQzYzkwN2Y3YzY2ZWRjYw")

	def __unicode__(self):
        	return str(self.project_title)


class product(models.Model):
	product_title = models.CharField(max_length=50)
	product_image = models.ImageField(upload_to="Images/Product")
	product_desc = models.TextField(max_length=5000)
	product_stock = models.BooleanField(default=True)
	product_price = models.IntegerField(default=2000)
	product_pdf_link = models.CharField(max_length=200,default="https://docs.google.com/viewer?a=v&pid=sites&srcid=ZGVmYXVsdGRvbWFpbnxkcmNoaXRyYWRoYXdhbGV8Z3g6NDQzYzkwN2Y3YzY2ZWRjYw")


	def __unicode__(self):
        	return self.product_title

class contactus(models.Model):
	fname = models.CharField(max_length=50)
	subject = models.CharField(max_length=50)
	email = models.EmailField(max_length=50)
	phone_regex = RegexValidator(regex=r'^\+?1?\d{9,15}$', message="Phone number must be entered in the format: '+999999999'. Up to 15 digits allowed.")
	phone_no = models.CharField(validators=[phone_regex], max_length=15, blank=True)
	#phone_no = models.IntegerField(max_length=13)
	#phone_no = models.IntegerField(max_length=10,blank=True,validators=[RegexValidator(regex='^.{10}$', message='Mobile no has to be 10 digits long', code='nomatch')])
	message = models.TextField(max_length=5000)

	def __unicode__(self):
        	return str(self.fname)


class aboutus(models.Model):
	aboutus_title = models.CharField(max_length=50)
	aboutus_desc = models.TextField(max_length=5000)
	aboutus_image = models.ImageField(upload_to="Images/Aboutus")
	team1_image = models.ImageField(upload_to="Images/Aboutus")
	team2_image = models.ImageField(upload_to="Images/Aboutus")
	team3_image = models.ImageField(upload_to="Images/Aboutus")

	def __unicode__(self):
        	return self.aboutus_title

class slider(models.Model):
	slider_title = models.CharField(max_length=50)
	slider_image1 = models.ImageField(upload_to="Images/Slider/")
	slider_image2 = models.ImageField(upload_to="Images/Slider/")
	slider_image3 = models.ImageField(upload_to="Images/Slider/")
	slider_image4 = models.ImageField(upload_to="Images/Slider/")

	def __unicode__(self):
        	return self.slider_title


