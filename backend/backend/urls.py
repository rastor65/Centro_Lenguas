from django.contrib import admin
from django.urls import path, include

urlpatterns = [
    path('admin/', admin.site.urls),
    path('curso/', include('apps.curso.urls')),
    path('recurso/', include('apps.recurso.urls')),
    path('usuario/', include('apps.usuario.urls')),
    path('diagnostico/', include('apps.diagnostico.urls')),
]
