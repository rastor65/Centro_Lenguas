from django.db import models
from apps.curso.models import Licencia_clase

# Create your models here.


class Tipo_Documento (models.Model):
    TiDo_Nombre = models.CharField(max_length=250)

class Tipo_Genero (models.Model):
    TiGe_Nombre = models.CharField(max_length=250)

def archivo_upload_path(instance, filename):
    # Define la carpeta y el nombre del archivo
    return f'avatar/{instance.User_Username}/{filename}'

class Usuario (models.Model):
    User_Username = models.CharField(max_length=250)
    User_Password = models.CharField(max_length=250)
    User_Avatar = models.ImageField(upload_to=archivo_upload_path)
    User_Nombres = models.CharField(max_length=250)
    User_Apellidos = models.CharField(max_length=250)
    User_Correo = models.CharField(max_length=250)
    User_Documento = models.CharField(max_length=45)
    Tipo_Documento = models.ForeignKey(Tipo_Documento, on_delete=models.CASCADE)
    Tipo_Genero = models.ForeignKey(Tipo_Genero, on_delete=models.CASCADE)

class UsuarioxLicencia (models.Model):
    UserID = models.ForeignKey(Usuario, on_delete=models.CASCADE)
    LicenciaID = models.ForeignKey(Licencia_clase, on_delete=models.CASCADE)