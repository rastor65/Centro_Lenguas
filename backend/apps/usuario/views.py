from django.shortcuts import render
from rest_framework import generics 
from .models import *
from .serializers import *

# Create your views here.

class UsuarioListView(generics.ListCreateAPIView):
    queryset = Usuario.objects.all()
    serializer_class = UsuarioSerializer

class UsuarioDetailView(generics.RetrieveUpdateDestroyAPIView):
    queryset = Tipo_Documento.objects.all()
    serializer_class = Tipo_DocumentoSerializer
    
class Tipo_DocumentoListView(generics.ListCreateAPIView):
    queryset = Tipo_Documento.objects.all()
    serializer_class = Tipo_DocumentoSerializer

class Tipo_DocumentoDetailView(generics.RetrieveUpdateDestroyAPIView):
    queryset = Tipo_Documento.objects.all()
    serializer_class = Tipo_DocumentoSerializer
    
class Tipo_GeneroListView(generics.ListCreateAPIView):
    queryset = Tipo_Genero.objects.all()
    serializer_class = Tipo_GeneroSerializer

class Tipo_GeneroDetailView(generics.RetrieveUpdateDestroyAPIView):
    queryset = Tipo_Genero.objects.all()
    serializer_class = Tipo_GeneroSerializer
    
class UsuarioxLicenciaListView(generics.ListCreateAPIView):
    queryset = UsuarioxLicencia.objects.all()
    serializer_class = UsuarioxLicenciaSerializer

class UsuarioxLicenciaDetailView(generics.RetrieveUpdateDestroyAPIView):
    queryset = UsuarioxLicencia.objects.all()
    serializer_class = UsuarioxLicenciaSerializer






