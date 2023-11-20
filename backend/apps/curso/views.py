from django.shortcuts import render
from rest_framework import generics 
from .models import *
from .serializers import *
# Create your views here.

class CursoListView(generics.ListCreateAPIView):
    queryset = Curso.objects.all()
    serializer_class = CursoSerializer

class CursoDetailView(generics.RetrieveUpdateDestroyAPIView):
    queryset = Curso.objects.all()
    serializer_class = CursoSerializer

class Licencia_claseListView(generics.ListCreateAPIView):
    queryset = Licencia_clase.objects.all()
    serializer_class = Licencia_claseSerializer

class Licencia_claseDetailView(generics.RetrieveUpdateDestroyAPIView):
    queryset = Licencia_clase.objects.all()
    serializer_class = Licencia_claseSerializer

class NivelListView(generics.ListCreateAPIView):
    queryset = Nivel.objects.all()
    serializer_class = NivelSerializer

class NivelDetailView(generics.RetrieveUpdateDestroyAPIView):
    queryset = Nivel.objects.all()
    serializer_class = NivelSerializer

class CursoxNivelListView(generics.ListCreateAPIView):
    queryset = CursoxNivel.objects.all()
    serializer_class = CursoxNivelSerializer

class CursoxNivelDetailView(generics.RetrieveUpdateDestroyAPIView):
    queryset = CursoxNivel.objects.all()
    serializer_class = CursoxNivelSerializer

class UnidadListView(generics.ListCreateAPIView):
    queryset = Unidad.objects.all()
    serializer_class = UnidadSerializer

class UnidadDetailView(generics.RetrieveUpdateDestroyAPIView):
    queryset = Unidad.objects.all()
    serializer_class = UnidadSerializer

class Tipo_ActividadListView(generics.ListCreateAPIView):
    queryset = Tipo_Actividad.objects.all()
    serializer_class = Tipo_ActividadSerializer

class Tipo_ActividadDetailView(generics.RetrieveUpdateDestroyAPIView):
    queryset = Tipo_Actividad.objects.all()
    serializer_class = Tipo_ActividadSerializer

class Tipo_ContenidoListView(generics.ListCreateAPIView):
    queryset = Tipo_Contenido.objects.all()
    serializer_class = Tipo_ContenidoSerializer

class Tipo_ContenidoDetailView(generics.RetrieveUpdateDestroyAPIView):
    queryset = Tipo_Contenido.objects.all()
    serializer_class = Tipo_ContenidoSerializer