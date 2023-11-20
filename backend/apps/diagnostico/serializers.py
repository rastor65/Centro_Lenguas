from rest_framework import serializers 
from apps.diagnostico.models import *

class TipoPreguntaSerializer(serializers.ModelSerializer):
    class Meta:
        model = TipoPregunta
        fields = [
            'TiPr_Nombre'
        ]

class Examen_DiagnosticoSerializer(serializers.ModelSerializer):
    class Meta:
        model = Examen_Diagnostico
        fields = [
            'ExDi_Nombre',
            'ExDi_Descripcion'
        ]

class PreguntaSerializer(serializers.ModelSerializer):
    class Meta:
        model = Pregunta
        fields = [
            'Preg_Nivel',
            'Preg_Pregunta',
            'Preg_RespuestaCorrecta',
            'preg_RespuestaSeleccionada',
            'TipoPregunta_ID'
        ]

class PreguntaxExamenDiagnosticoSerializer(serializers.ModelSerializer):
    class Meta:
        model = PreguntaxExamenDiagnostico
        fields = [
            'Pregunta_ID',
            'Examen_Diagnostico_ID'
        ]

class RespuestaSerializer(serializers.ModelSerializer):
    class Meta:
        model = Respuesta
        fields = [
            'Resp_Contenido'
        ]

class RespuestaxPreguntaSerializer(serializers.ModelSerializer):
    class Meta:
        model = RespuestaxPregunta
        fields = [
            'Respuesta_ID',
            'Pregunta_ID'
        ]