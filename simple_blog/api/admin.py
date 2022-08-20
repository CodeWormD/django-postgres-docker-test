from django.contrib import admin
from .models import TestModel, TestModelsTwo
# Register your models here.


@admin.register(TestModel)
class TestModel(admin.ModelAdmin):
    list_display = (
        'name',
        'second_name'
    )
    
@admin.register(TestModelsTwo)
class TestModelsTwo(admin.ModelAdmin):
    list_display = (
        'organisation',
        'adress'
    )