from django.shortcuts import render
from rest_framework import generics 
from .models import *
from .serializers import *

# Create your views here.

class TipoPreguntaListView(generics.ListCreateAPIView):
    queryset = TipoPregunta.objects.all()
    serializer_class = TipoPreguntaSerializer

class TipoPreguntaDetailView(generics.RetrieveUpdateDestroyAPIView):
    queryset = TipoPregunta.objects.all()
    serializer_class = TipoPreguntaSerializer

class Examen_DiagnosticoListView(generics.ListCreateAPIView):
    queryset = Examen_Diagnostico.objects.all()
    serializer_class = Examen_DiagnosticoSerializer

class Examen_DiagnosticoDetailView(generics.RetrieveUpdateDestroyAPIView):
    queryset = Examen_Diagnostico.objects.all()
    serializer_class = Examen_DiagnosticoSerializer

class PreguntaListView(generics.ListCreateAPIView):
    queryset = Pregunta.objects.all()
    serializer_class = PreguntaSerializer

class PreguntaDetailView(generics.RetrieveUpdateDestroyAPIView):
    queryset = Pregunta.objects.all()
    serializer_class = PreguntaSerializer

class PreguntaxExamenDiagnosticoListView(generics.ListCreateAPIView):
    queryset = PreguntaxExamenDiagnostico.objects.all()
    serializer_class = PreguntaxExamenDiagnosticoSerializer

class PreguntaxExamenDiagnosticoDetailView(generics.RetrieveUpdateDestroyAPIView):
    queryset = PreguntaxExamenDiagnostico.objects.all()
    serializer_class = PreguntaxExamenDiagnosticoSerializer

class RespuestaListView(generics.ListCreateAPIView):
    queryset = Respuesta.objects.all()
    serializer_class = RespuestaSerializer

class RespuestaDetailView(generics.RetrieveUpdateDestroyAPIView):
    queryset = Respuesta.objects.all()
    serializer_class = RespuestaSerializer

class RespuestaxPreguntaListView(generics.ListCreateAPIView):
    queryset = RespuestaxPregunta.objects.all()
    serializer_class = RespuestaxPreguntaSerializer

class RespuestaxPreguntaDetailView(generics.RetrieveUpdateDestroyAPIView):
    queryset = RespuestaxPregunta.objects.all()
    serializer_class = RespuestaxPreguntaSerializer