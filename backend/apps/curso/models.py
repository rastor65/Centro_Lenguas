from django.db import models
from apps.basemodel.models import BaseModel


# Create your models here.


class Curso (BaseModel):
    Curs_Nombre = models.CharField(max_length=250)
    Curs_Cupos = models.IntegerField()
    Curs_Cupos_Disponibles = models.IntegerField()
    Curs_Dias_Uso = models.IntegerField()
    Curs_Dias_Garantia = models.IntegerField()

class Licencia_clase (BaseModel):
    Lice_Nombre = models.CharField(max_length=250)
    Lice_Cupo = models.CharField(max_length=250)
    Lice_Fecha_inicio = models.DateField()
    Lice_Fecha_fin = models.DateField()
    CursoID = models.ForeignKey(Curso, on_delete=models.CASCADE)

class Nivel (BaseModel):
    Nive_Nombre = models.CharField(max_length=250)

class CursoxNivel (BaseModel):
    CursoID = models.ForeignKey(Curso, on_delete=models.CASCADE)
    NivelID = models.ForeignKey(Nivel, on_delete=models.CASCADE)

class Unidad (BaseModel):
    Unid_Nombre = models.CharField(max_length=250)
    NivelID = models.ForeignKey(Nivel, on_delete=models.CASCADE)

class Tipo_Actividad (BaseModel):
    Tiac_nombre = models.CharField(max_length=250)

class Tipo_Contenido (BaseModel):
    Tico_Nombre = models.CharField(max_length=250)    

class Leccion (BaseModel):
    Leci_Nombre = models.CharField(max_length=250)
    Leci_Descripcion = models.TextField()
    Leci_Contenido = models.IntegerField()
    Leci_Actividades = models.IntegerField()
    Leci_Examen = models.IntegerField()
    TicoID = models.ForeignKey(Tipo_Contenido, on_delete=models.CASCADE)
    TiacID = models.ForeignKey(Tipo_Actividad, on_delete=models.CASCADE)