from rest_framework import serializers 
from apps.curso.models import *

class CursoSerializer(serializers.ModelSerializer):

    class Meta:
        model = Curso
        fields = [
            'Curs_Nombre',
            'Curs_Cupos',
            'Curs_Cupos_Disponibles',
            'Curs_Dias_Uso',
            'Curs_Dias_Garantia',
        ]

class Licencia_claseSerializer(serializers.ModelSerializer):

    class Meta:
        model = Licencia_clase
        fields = [
            'Lice_Nombre',
            'Lice_Cupo',
            'Lice_Fecha_inicio',
            'Lice_Fecha_fin',
            'CursoID'
        ]

class NivelSerializer(serializers.ModelSerializer):

    class Meta:
        model = Nivel
        fields = [
            'Nive_Nombre'
        ]

class CursoxNivelSerializer(serializers.ModelSerializer):
    class Meta:
        model = CursoxNivel
        fields = [
            'CursoID',
            'NivelID' 
        ]

class UnidadSerializer(serializers.ModelSerializer):
    class Meta:
        model = Unidad
        fields = [
            'Unid_Nombre',
            'NivelID'
        ]

class Tipo_ActividadSerializer(serializers.ModelSerializer):
    class Meta:
        model = Tipo_Actividad
        fields = [
            'Tiac_nombre'
        ]

class Tipo_ContenidoSerializer(serializers.ModelSerializer):
    class Meta:
        model = Tipo_Contenido
        fields = [
            'Leci_Nombre',
            'Leci_Descripcion',
            'Leci_Contenido', 
            'Leci_Actividades', 
            'Leci_Examen', 
            'TicoID', 
            'TiacID'
        ]