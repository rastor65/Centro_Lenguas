from django.db import models
from apps.usuario.models import Usuario

# Create your models here.

class Recursos (models.Model):
    Recu_Titulo = models.CharField(max_length=250)
    Recu_Path = models.CharField(max_length=250)
    Recu_Padre = models.CharField(max_length=250)
    Recu_Icono = models.CharField(max_length=250)
    Recu_Link = models.CharField(max_length=250)

class Rol (models.Model):
    Rol_Nombre = models.CharField(max_length=250)


class RecursosxRol (models.Model):
    RecursosID = models.ForeignKey(Recursos, on_delete=models.CASCADE)
    RolID = models.ForeignKey(Rol, on_delete=models.CASCADE)

class RolxUsuario (models.Model):
    RolID = models.ForeignKey(Rol, on_delete=models.CASCADE)
    UsuarioID = models.ForeignKey(Usuario, on_delete=models.CASCADE)