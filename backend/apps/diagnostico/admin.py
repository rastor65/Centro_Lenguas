from django.contrib import admin
from apps.diagnostico.models import *
# Register your models here.

admin.site.register(TipoPregunta)
admin.site.register(Examen_Diagnostico)
admin.site.register(Pregunta)
admin.site.register(PreguntaxExamenDiagnostico)
admin.site.register(Respuesta)
admin.site.register(RespuestaxPregunta)
