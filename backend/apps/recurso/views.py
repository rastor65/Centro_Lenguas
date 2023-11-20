from django.shortcuts import render
from rest_framework import generics 
from .models import *
from .serializers import *
# Create your views here.

class RecursosListView(generics.ListCreateAPIView):
    queryset = Recursos.objects.all()
    serializer_class = RecursosSerializer

class RecursosDetailView(generics.RetrieveUpdateDestroyAPIView):
    queryset = Recursos.objects.all()
    serializer_class = RecursosSerializer

class RolListView(generics.ListCreateAPIView):
    queryset = Rol.objects.all()
    serializer_class = RolSerializer

class RolDetailView(generics.RetrieveUpdateDestroyAPIView):
    queryset = Rol.objects.all()
    serializer_class = RolSerializer

class RecursosxRolListView(generics.ListCreateAPIView):
    queryset = RecursosxRol.objects.all()
    serializer_class = RecursosxRolSerializer

class RecursosxRolDetailView(generics.RetrieveUpdateDestroyAPIView):
    queryset = RecursosxRol.objects.all()
    serializer_class = RecursosxRolSerializer

class RolxUsuarioListView(generics.ListCreateAPIView):
    queryset = RolxUsuario.objects.all()
    serializer_class = RolxUsuarioSerializer

class RolxUsuarioDetailView(generics.RetrieveUpdateDestroyAPIView):
    queryset = RolxUsuario.objects.all()
    serializer_class = RolxUsuarioSerializer