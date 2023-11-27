from django.db import models
from apps.usuario.models import Usuarios
from apps.basemodel.models import BaseModel


# Create your models here.

class Recursos (BaseModel):
    Recu_Titulo = models.CharField(max_length=250)
    Recu_Path = models.CharField(max_length=250)
    Recu_Padre = models.CharField(max_length=250)
    Recu_Icono = models.CharField(max_length=250)
    Recu_Link = models.CharField(max_length=250)

class Rol (BaseModel):
    Rol_Nombre = models.CharField(max_length=250)


class RecursosxRol (BaseModel):
    RecursosID = models.ForeignKey(Recursos, on_delete=models.CASCADE)
    RolID = models.ForeignKey(Rol, on_delete=models.CASCADE)

class RolxUsuario (BaseModel):
    RolID = models.ForeignKey(Rol, on_delete=models.CASCADE)
    UsuarioID = models.ForeignKey(Usuarios, on_delete=models.CASCADE)