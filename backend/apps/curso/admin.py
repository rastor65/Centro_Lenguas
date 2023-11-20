from django.contrib import admin
from apps.curso.models import *
# Register your models here.

admin.site.register(Curso)
admin.site.register(Licencia_clase)
admin.site.register(Nivel)
admin.site.register(CursoxNivel)
admin.site.register(Unidad)
admin.site.register(Tipo_Actividad)
admin.site.register(Tipo_Contenido)
admin.site.register(Leccion)
