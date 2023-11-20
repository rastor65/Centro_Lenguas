from django.contrib import admin
from apps.recurso.models import *
# Register your models here.

admin.site.register(Recursos)
admin.site.register(Rol)
admin.site.register(RecursosxRol)
admin.site.register(RolxUsuario)