from django.db import models

class TestModel(models.Model):
    name = models.CharField(max_length=25)
    second_name = models.CharField(max_length=25)

class TestModelsTwo(models.Model):
    organisation = models.CharField(max_length=25)
    adress = models.CharField(max_length=25)