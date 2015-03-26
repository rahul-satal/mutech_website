from django.db import models

class News(models.Model):
	news_title = models.CharField(max_length=50)
	news_desc = models.CharField(max_length=200)

class ProfilePic(models.Model):
	profilePic = models.ImageField(upload_to="images")

class Branch(models.Model):
    branch_title = models.CharField(max_length=50)	


class Video(models.Model):
	video_title = models.CharField(max_length=50)
	video_link = models.CharField(max_length=200)

class Image(models.Model):
	image = models.ImageField(upload_to="images")
	image_title = models.CharField(max_length=50)


class Training(models.Model):
	training_title = models.CharField(max_length=50)
	training_image = models.ImageField(upload_to="images")
	training_desc = models.CharField(max_length=200)
	training_duration = models.CharField(max_length=50)

class Project(models.Model):
	project_title = models.CharField(max_length=50)
	project_image = models.ImageField(upload_to="images")
	project_desc = models.CharField(max_length=200)
	project_duration = models.CharField(max_length=50)
	branch = models.ForeignKey(Branch)


class Product(models.Model):
	product_title = models.CharField(max_length=50)
	product_image = models.ImageField(upload_to="images")
	product_desc = models.CharField(max_length=200)
	product_duration = models.CharField(max_length=50)		


	

