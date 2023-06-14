from django.contrib import admin
from Apps.biblioteca.models import Autor, Libro, Publicacion, Ejemplar

class MembershipInline(admin.TabularInline):
    model = Publicacion
    extra = 1

class AutorAdmin(admin.ModelAdmin):
    inlines = (MembershipInline,)
    

class PublicacionAdmin(admin.ModelAdmin):
    inlines = (MembershipInline,)
    list_display = (
        'nombreAutor',
    )
    ordering = (
        'nombreAutor',
    )
    search_fields = (
        'nombreAutor',
    )
    list_filter = (
        'nombreAutor',
    )

class LibroAdmin(admin.ModelAdmin):
    list_display = (
        'tituloLibro',
        'editorialLibro',
        'isbnLibro',
    )
    ordering = (
        'tituloLibro',
        'editorialLibro',
        'isbnLibro',
    )
    search_fields = (
        'tituloLibro',
        'editorialLibro',
        'isbnLibro',
    )
    list_filter = (
        'tituloLibro',
    )

class EjemplarAdmin(admin.ModelAdmin):
    list_display = (
        'libro',
        'localizacionEjemplar',
    )
    ordering = (
        'libro',
        'localizacionEjemplar',
    )
    search_fields = (
        'libro',
        'localizacionEjemplar',
    )
    list_filter = (
        'libro',
        'localizacionEjemplar',
    )


admin.site.register(Autor, PublicacionAdmin)
admin.site.register(Libro, LibroAdmin)
admin.site.register(Ejemplar, EjemplarAdmin)