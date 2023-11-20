from rest_framework import serializers 
from apps.recurso.models import *

class RecursosSerializer(serializers.ModelSerializer):
    class Meta:
        model = Recursos
        fields = [
            'Recu_Titulo',
            'Recu_Path',
            'Recu_Padre',
            'Recu_Icono',
            'Recu_Link',
        ]

class RolSerializer(serializers.ModelSerializer):
    class Meta:
        model = Rol
        fields = [
            'Rol_Nombre'
        ]

class RecursosxRolSerializer(serializers.ModelSerializer):
    class Meta:
        model = RecursosxRol
        fields = [
            'RecursosID',
            'RolID'
        ]
class RolxUsuarioSerializer(serializers.ModelSerializer):
    class Meta:
        model = RolxUsuario
        fields = [
            'RolID',
            'UsuarioID'
        ]