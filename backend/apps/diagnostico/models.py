from django.db import models

# Create your models here.
class TipoPregunta (models.Model):
    TiPr_Nombre = models.CharField(max_length=250)

class Examen_Diagnostico (models.Model):
    ExDi_Nombre = models.CharField(max_length=250)
    ExDi_Descripcion = models.TextField()

class Pregunta (models.Model):
    Preg_Nivel = models.IntegerField()
    Preg_Pregunta = models.CharField(max_length=250)
    Preg_RespuestaCorrecta = models.CharField(max_length=250)
    preg_RespuestaSeleccionada = models.CharField(max_length=250)
    TipoPregunta_ID = models.ForeignKey(TipoPregunta, on_delete=models.CASCADE)

class PreguntaxExamenDiagnostico (models.Model):
    Pregunta_ID = models.ForeignKey(Pregunta, on_delete=models.CASCADE)
    Examen_Diagnostico_ID = models.ForeignKey(Examen_Diagnostico, on_delete=models.CASCADE)

class Respuesta (models.Model):
    Resp_Contenido = models.CharField(max_length=250)

class RespuestaxPregunta (models.Model):
    Respuesta_ID = models.ForeignKey(Respuesta, on_delete=models.CASCADE)
    Pregunta_ID = models.ForeignKey(Pregunta, on_delete=models.CASCADE)