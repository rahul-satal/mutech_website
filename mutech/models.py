from django.db import models
from django.core.validators import RegexValidator
import warnings
warnings.filterwarnings("ignore", "Field 'subbranch_title' doesn't have a default value")

class news(models.Model):
	news_title = models.CharField(max_length=50)
	news_desc = models.TextField(max_length=20000)

	def __unicode__(self):              # __str__ on Python 3
        	return str(self.news_title)

class article(models.Model):
	article_title = models.CharField(max_length=50)
	article_desc = models.TextField(max_length=20000)

	def __unicode__(self):              
        	return str(self.article_title)        	

class profilePic(models.Model):
	profilePic = models.ImageField(upload_to="images")

	def __unicode__(self):              
        	return str(self.profilePic)

class branch(models.Model):
    branch_title = models.CharField(max_length=50)

    def __unicode__(self):              
        	return str(self.branch_title)	

class subbranch(models.Model):
	parentbranch = models.ForeignKey(branch)
	subbranch_title = models.CharField(max_length=50)

	def __unicode__(self):             
        	return str(self.subbranch_title)	    	

class training(models.Model):
	training_title = models.CharField(max_length=50)
	training_image = models.ImageField(upload_to="Images/Training")
	training_desc = models.TextField(max_length=5000)
	training_duration = models.CharField(max_length=50)

	def __unicode__(self):              
        	return str()

class project(models.Model):
	project_title = models.CharField(max_length=50)
	project_image = models.ImageField(upload_to="Images/Project")
	project_desc = models.TextField(max_length=5000)
	project_duration = models.CharField(max_length=50)
	project_branch = models.ForeignKey(branch)
	project_subbranch = models.ForeignKey(subbranch)

	def __unicode__(self):              
        	return str(self.project_title)


class product(models.Model):
	product_title = models.CharField(max_length=50)
	product_image = models.ImageField(upload_to="Images/Product")
	product_desc = models.TextField(max_length=5000)
	product_duration = models.CharField(max_length=50)

	def __unicode__(self):              
        	return self.product_title	

class contactus(models.Model):
	fname = models.CharField(max_length=50)
	lname = models.CharField(max_length=50)
	email = models.EmailField(max_length=50)
	phone_no = models.IntegerField(max_length=10)
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
	slider_image5 = models.ImageField(upload_to="Images/Slider/")
	slider_image6 = models.ImageField(upload_to="Images/Slider/")
	slider_image7 = models.ImageField(upload_to="Images/Slider/")
	slider_image8 = models.ImageField(upload_to="Images/Slider/")
	slider_image9 = models.ImageField(upload_to="Images/Slider/")
	slider_image10 = models.ImageField(upload_to="Images/Slider/")
	def __unicode__(self):              
        	return self.slider_title	        	

	

