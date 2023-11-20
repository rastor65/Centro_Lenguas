from django.urls import path
from . import views
from django.conf.urls.static import static
from django.conf import settings

urlpatterns = [
    path('curso', views.CursoListView.as_view(), name='curso-list'),
    path('curso/<int:pk>', views.CursoDetailView.as_view(), name='curso-detail'),

    path('licencia_clase', views.Licencia_claseListView.as_view(), name='licencia_clase-list'),
    path('licencia_clase/<int:pk>', views.Licencia_claseDetailView.as_view(), name='licencia_clase-detail'),
    
    path('nivel', views.NivelListView.as_view(), name='nivel-list'),
    path('nivel/<int:pk>', views.NivelDetailView.as_view(), name='nivel-detail'),
    
    path('cursoxnivel', views.CursoxNivelListView.as_view(), name='cursoxnivel-list'),
    path('cursoxnivel/<int:pk>', views.CursoxNivelDetailView.as_view(), name='cursoxnivel-detail'),
    
    path('unidad', views.UnidadListView.as_view(), name='unidad-list'),
    path('unidad/<int:pk>', views.UnidadDetailView.as_view(), name='unidad-detail'),
    
    path('tipo_actividad', views.Tipo_ActividadListView.as_view(), name='tipo_actividad-list'),
    path('tipo_actividad/<int:pk>', views.Tipo_ActividadDetailView.as_view(), name='tipo_actividad-detail'),

    path('tipo_contenido', views.Tipo_ContenidoListView.as_view(), name='tipo_contenido-list'),
    path('tipo_contenido/<int:pk>', views.Tipo_ContenidoDetailView.as_view(), name='tipo_contenido-detail'),
]