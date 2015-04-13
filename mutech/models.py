from django.db import models

class news(models.Model):
	news_title = models.CharField(max_length=50)
	news_desc = models.TextField(max_length=5000)

	def __unicode__(self):              # __str__ on Python 3
        	return str(self.news_title)

class article(models.Model):
	article_title = models.CharField(max_length=50)
	article_desc = models.TextField(max_length=5000)

	def __unicode__(self):              # __str__ on Python 3
        	return str(self.article_title)        	

class profilePic(models.Model):
	profilePic = models.ImageField(upload_to="images")

	def __unicode__(self):              # __str__ on Python 3
        	return str(self.profilePic)

class branch(models.Model):
    branch_title = models.CharField(max_length=50)
    subbranch_title = models.CharField(max_length=50)

    def __unicode__(self):              # __str__ on Python 3
        	return str(self.branch_title)	

class training(models.Model):
	training_title = models.CharField(max_length=50)
	training_image = models.ImageField(upload_to="Images/Training")
	training_desc = models.TextField(max_length=5000)
	training_duration = models.CharField(max_length=50)

	def __unicode__(self):              # __unicode__ on Python 2
        	return str()

class project(models.Model):
	project_title = models.CharField(max_length=50)
	project_image = models.ImageField(upload_to="Images/Project")
	project_desc = models.TextField(max_length=5000)
	project_duration = models.CharField(max_length=50)
	project_branch = models.ForeignKey(branch)

	def __unicode__(self):              # __unicode__ on Python 2
        	return str(self.project_title)


class product(models.Model):
	product_title = models.CharField(max_length=50)
	product_image = models.ImageField(upload_to="Images/Product")
	product_desc = models.TextField(max_length=5000)
	product_duration = models.CharField(max_length=50)

	def __unicode__(self):              # __unicode__ on Python 2
        	return self.product_title	


	

