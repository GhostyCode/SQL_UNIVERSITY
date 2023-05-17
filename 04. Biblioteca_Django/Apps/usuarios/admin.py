from django.contrib import admin
from Apps.usuarios.models import Usuario

# Register your models here.

class UsuarioAdmin(admin.ModelAdmin):
    pass


admin.site.register(Usuario, UsuarioAdmin)
