from django.urls import path
from . import views
from django.conf.urls.static import static
from django.conf import settings

urlpatterns = [
    path('tipopregunta', views.TipoPreguntaListView.as_view(), name='tipopregunta-list'),
    path('tipopregunta/<int:pk>', views.TipoPreguntaDetailView.as_view(), name='tipopregunta-detail'),

    path('examendiagnostico', views.Examen_DiagnosticoListView.as_view(), name='examendiagnostico-list'),
    path('examendiagnostico/<int:pk>', views.Examen_DiagnosticoDetailView.as_view(), name='examendiagnostico-detail'),

    path('pregunta', views.PreguntaListView.as_view(), name='pregunta-list'),
    path('ptregunta/<int:pk>', views.PreguntaDetailView.as_view(), name='pregunta-detail'),

    path('preguntaxexamendiagnostico', views.PreguntaxExamenDiagnosticoListView.as_view(), name='preguntaxexamendiagnostico-list'),
    path('preguntaxexamendiagnostico/<int:pk>', views.PreguntaxExamenDiagnosticoDetailView.as_view(), name='preguntaxexamendiagnostico-detail'),

    path('respuesta', views.RespuestaListView.as_view(), name='respuesta-list'),
    path('respuesta/<int:pk>', views.RespuestaDetailView.as_view(), name='respuesta-detail'),

    path('respuestaxpregunta', views.RespuestaxPreguntaListView.as_view(), name='respuestaxpregunta-list'),
    path('respuestaxpregunta/<int:pk>', views.RespuestaxPreguntaDetailView.as_view(), name='respuestaxpregunta-detail'),
]