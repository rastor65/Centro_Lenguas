from django.contrib import admin
from django.urls import path, include

urlpatterns = [
    path('admin/', admin.site.urls),
    path('', include('apps.curso.urls')),
    path('', include('apps.recurso.urls')),
    path('', include('apps.usuario.urls')),
    path('', include('apps.diagnostico.urls')),
]
