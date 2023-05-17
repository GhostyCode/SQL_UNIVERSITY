from django.contrib import admin
from Apps.usuarios.models import Usuario
from Apps.prestamos.models import Prestar


class MembershipInline(admin.TabularInline):
    model = Prestar
    extra = 1

class UsuarioAdmin(admin.ModelAdmin):
    inlines = (MembershipInline,)

class PrestarAdmin(admin.ModelAdmin):
    inlines = (MembershipInline,)
    list_display = (
        'nombreUsuario',
        'direccionUsuario',
        'telefonoUsuario',
    )
    ordering = (
        'nombreUsuario',
        'direccionUsuario',
        'telefonoUsuario',
    )
    search_fields = (
        'nombreUsuario',
        'direccionUsuario',
        'telefonoUsuario',
    )
    list_filter = (
        'nombreUsuario',
    )



admin.site.register(Usuario, PrestarAdmin)

