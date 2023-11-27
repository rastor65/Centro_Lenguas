from rest_framework import serializers 
from apps.usuario.models import *

class UsuarioSerializer(serializers.ModelSerializer):

    class Meta:
        model = Usuarios
        fields = [
            'first_name',
            'last_name',
            'email',
            'password',
            'username',
            'User_Avatar',
            'User_Documento',
            'Tipo_Documento',
            'Tipo_Genero'
        ]

class Tipo_DocumentoSerializer(serializers.ModelSerializer):
    class Meta:
        model = Tipo_Documento
        fields = [
            'TiDo_Nombre',
        ]

class Tipo_GeneroSerializer(serializers.ModelSerializer):
    class Meta:
        model = Tipo_Genero
        fields = [
            'TiGe_Nombre',
        ]

class UsuarioxLicenciaSerializer(serializers.ModelSerializer):
    class Meta:
        model = UsuarioxLicencia
        fields = [
            'UserID',
            'LicenciaID'
        ]