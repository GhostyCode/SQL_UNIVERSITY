from django.contrib import admin
from Apps.biblioteca.models import Autor, Libro, Publicacion, Ejemplar

class BibliotecaAdmin(admin.ModelAdmin):
    pass

admin.site.register(Autor, BibliotecaAdmin)
admin.site.register(Libro, BibliotecaAdmin)
admin.site.register(Publicacion, BibliotecaAdmin)
admin.site.register(Ejemplar, BibliotecaAdmin)