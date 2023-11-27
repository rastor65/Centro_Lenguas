from django.db import models
from apps.basemodel.models import BaseModel


# Create your models here.
class TipoPregunta (BaseModel):
    TiPr_Nombre = models.CharField(max_length=250)

class Examen_Diagnostico (BaseModel):
    ExDi_Nombre = models.CharField(max_length=250)
    ExDi_Descripcion = models.TextField()

class Pregunta (BaseModel):
    Preg_Nivel = models.IntegerField()
    Preg_Pregunta = models.CharField(max_length=250)
    Preg_RespuestaCorrecta = models.CharField(max_length=250)
    preg_RespuestaSeleccionada = models.CharField(max_length=250)
    TipoPregunta_ID = models.ForeignKey(TipoPregunta, on_delete=models.CASCADE)

class PreguntaxExamenDiagnostico (BaseModel):
    Pregunta_ID = models.ForeignKey(Pregunta, on_delete=models.CASCADE)
    Examen_Diagnostico_ID = models.ForeignKey(Examen_Diagnostico, on_delete=models.CASCADE)

class Respuesta (BaseModel):
    Resp_Contenido = models.CharField(max_length=250)

class RespuestaxPregunta (BaseModel):
    Respuesta_ID = models.ForeignKey(Respuesta, on_delete=models.CASCADE)
    Pregunta_ID = models.ForeignKey(Pregunta, on_delete=models.CASCADE)