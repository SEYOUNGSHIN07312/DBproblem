from django.db import models
from django.conf import settings

# Create your models here.
class Author(models.Model):
    name = models.TextField()

class Todo(models.Model):
    author = models.ForeignKey(Author, on_delete=models.CASCADE)
    title = models.CharField(max_length=100)
    completed = models.BooleanField(default=False)