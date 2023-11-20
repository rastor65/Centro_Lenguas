from django.urls import path
from . import views
from django.conf.urls.static import static
from django.conf import settings

urlpatterns = [
    path('recursos', views.RecursosListView.as_view(), name='recursos-list'),
    path('recursos/<int:pk>', views.RecursosDetailView.as_view(), name='recursos-detail'),

    path('rol', views.RolListView.as_view(), name='rol-list'),
    path('rol/<int:pk>', views.RolDetailView.as_view(), name='rol-detail'),

    path('recursosxrol', views.RecursosxRolListView.as_view(), name='recursosxrol-list'),
    path('recursosxrol/<int:pk>', views.RecursosxRolDetailView.as_view(), name='recursosxrol-detail'),

    path('rolxusuario', views.RolxUsuarioListView.as_view(), name='rolxusuario-list'),
    path('rolxusuario/<int:pk>', views.RolxUsuarioDetailView.as_view(), name='rolxusuario-detail'),

]