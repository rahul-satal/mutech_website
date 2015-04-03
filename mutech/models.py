from django.db import models

class news(models.Model):
	news_title = models.CharField(max_length=50)
	news_desc = models.CharField(max_length=200)

class profilePic(models.Model):
	profilePic = models.ImageField(upload_to="images")

class branch(models.Model):
    branch_title = models.CharField(max_length=50)	


class video(models.Model):
	video_title = models.CharField(max_length=50)
	video_link = models.CharField(max_length=200)

class image(models.Model):
	image = models.ImageField(upload_to="images")
	image_title = models.CharField(max_length=50)


class training(models.Model):
	training_title = models.CharField(max_length=50)
	training_image = models.ImageField(upload_to="images")
	training_desc = models.CharField(max_length=200)
	training_duration = models.CharField(max_length=50)

class project(models.Model):
	project_title = models.CharField(max_length=50)
	project_image = models.ImageField(upload_to="images")
	project_desc = models.CharField(max_length=200)
	project_duration = models.CharField(max_length=50)
	branch = models.ForeignKey(branch)


class product(models.Model):
	product_title = models.CharField(max_length=50)
	product_image = models.ImageField(upload_to="images")
	product_desc = models.CharField(max_length=200)
	product_duration = models.CharField(max_length=50)		


	

