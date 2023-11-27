from django.urls import path, include
from . import views
from .views import *
from django.conf.urls.static import static
from django.conf import settings


urlpatterns = [
    path('usuario', views.UsuarioListView.as_view(), name='usuario-list'),
    path('usuario/<int:pk>', views.UsuarioDetailView.as_view(), name='usuario-detail'),

    path('tipo_documento', views.Tipo_DocumentoListView.as_view(), name='tipo_documento-list'),
    path('tipo_documento/<int:pk>', views.Tipo_DocumentoDetailView.as_view(), name='tipo_documento-detail'),

    path('tipo_genero', views.Tipo_GeneroListView.as_view(), name='tipo_genero-list'),
    path('tipo_genero/<int:pk>', views.Tipo_GeneroDetailView.as_view(), name='tipo_genero-detail'),

    path('usuarioxlicencia', views.UsuarioxLicenciaListView.as_view(), name='usuarioxlicencia-list'),
    path('usuarioxlicencia/<int:pk>', views.UsuarioxLicenciaDetailView.as_view(), name='usuarioxlicencia-detail'),

    path('registro/', RegistroView.as_view(), name='registro'),
    path('auth/login/', AuthLogin.as_view(), name='auth_login'),
    path('auth/logout/', LogoutView.as_view(), name='auth_logout'),
    path('auth/reset/', include('django_rest_passwordreset.urls', namespace='password_reset')),

]