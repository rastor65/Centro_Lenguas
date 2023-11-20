from django.contrib import admin
from apps.usuario.models import *
# Register your models here.

admin.site.register(Tipo_Documento)
admin.site.register(Tipo_Genero)
admin.site.register(Usuario)
admin.site.register(UsuarioxLicencia)