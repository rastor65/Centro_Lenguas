from django.db import models

# Create your models here.


class Curso (models.Model):
    Curs_Nombre = models.CharField(max_length=250)
    Curs_Cupos = models.IntegerField()
    Curs_Cupos_Disponibles = models.IntegerField()
    Curs_Dias_Uso = models.IntegerField()
    Curs_Dias_Garantia = models.IntegerField()

class Licencia_clase (models.Model):
    Lice_Nombre = models.CharField(max_length=250)
    Lice_Cupo = models.CharField(max_length=250)
    Lice_Fecha_inicio = models.DateField()
    Lice_Fecha_fin = models.DateField()
    CursoID = models.ForeignKey(Curso, on_delete=models.CASCADE)

class Nivel (models.Model):
    Nive_Nombre = models.CharField(max_length=250)

class CursoxNivel (models.Model):
    CursoID = models.ForeignKey(Curso, on_delete=models.CASCADE)
    NivelID = models.ForeignKey(Nivel, on_delete=models.CASCADE)

class Unidad (models.Model):
    Unid_Nombre = models.CharField(max_length=250)
    NivelID = models.ForeignKey(Nivel, on_delete=models.CASCADE)

class Tipo_Actividad (models.Model):
    Tiac_nombre = models.CharField(max_length=250)

class Tipo_Contenido (models.Model):
    Tico_Nombre = models.CharField(max_length=250)    

class Leccion (models.Model):
    Leci_Nombre = models.CharField(max_length=250)
    Leci_Descripcion = models.TextField()
    Leci_Contenido = models.IntegerField()
    Leci_Actividades = models.IntegerField()
    Leci_Examen = models.IntegerField()
    TicoID = models.ForeignKey(Tipo_Contenido, on_delete=models.CASCADE)
    TiacID = models.ForeignKey(Tipo_Actividad, on_delete=models.CASCADE)