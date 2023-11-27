from django.db import models

# Create your models here.

class BaseModel (models.Model):
    createdAt = models.DateField(auto_now_add=True, blank=True, null=True)
    updateAt = models.DateField(auto_now=True, blank=True, null=True)

    class Meta:
        abstract = True
