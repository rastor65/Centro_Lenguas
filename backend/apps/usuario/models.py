from django.db import models
from apps.curso.models import Licencia_clase
from apps.basemodel.models import BaseModel
from django.contrib.auth.models import AbstractUser, Group, Permission
from django.contrib.auth.hashers import make_password
# Create your models here.

class Tipo_Documento (BaseModel):
    TiDo_Nombre = models.CharField(max_length=250)

    def __str__(self) -> str:
        return self.TiDo_Nombre 


class Tipo_Genero (BaseModel):
    TiGe_Nombre = models.CharField(max_length=250)

    def __str__(self) -> str:
        return self.TiGe_Nombre 

def archivo_upload_path(instance, filename):
    # Define la carpeta y el nombre del archivo
    return f'avatar/{instance.User_Username}/{filename}'

class Usuarios (AbstractUser, BaseModel):
    User_Avatar = models.ImageField(upload_to=archivo_upload_path, blank=True, null=True)
    User_Documento = models.CharField(max_length=45, blank=True, null=True)
    Tipo_Documento = models.ForeignKey(Tipo_Documento, on_delete=models.CASCADE, blank=True, null=True)
    Tipo_Genero = models.ForeignKey(Tipo_Genero, on_delete=models.CASCADE, blank=True, null=True)
    groups = models.ManyToManyField(Group, related_name="usuario_groups")
    user_permissions = models.ManyToManyField(Permission, related_name="usuario_user_permissions")
    resetToken = models.CharField(max_length=256, blank=True, null=True)
    password = models.CharField(max_length=128, default=make_password('default_password'))
    username = models.CharField(max_length=150, default='default_username')

    def __str__(self) -> str:
        return self.username

class UsuarioxLicencia (BaseModel):
    UserID = models.ForeignKey(Usuarios, on_delete=models.CASCADE)
    LicenciaID = models.ForeignKey(Licencia_clase, on_delete=models.CASCADE)