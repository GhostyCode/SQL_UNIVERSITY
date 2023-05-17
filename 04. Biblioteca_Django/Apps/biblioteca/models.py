from django.db import models


# Modelo del libro
class Libro(models.Model):
    tituloLibro = models.CharField(max_length=100, help_text="Ingrese el titulo del libro")
    numeroPaginaLibro = models.CharField(max_length=100, help_text="Ingrese el numero de pagina del libro")
    editorialLibro = models.CharField(max_length=100, help_text="Ingrese la editorial del libro")
    isbnLibro = models.CharField(max_length=150, help_text="Ingrese el isbn del libro")

    def __str__(self):
        return self.tituloLibro

    class Meta:
        verbose_name = "libro"
        verbose_name_plural = "libros"

# Modelo del autor
class Autor(models.Model):
    nombreAutor = models.CharField(max_length=100, help_text="Ingrese el nombre del autor")
    libro = models.ManyToManyField(Libro, through='Publicacion', verbose_name="publicacion")
    def __str__(self):
        return self.nombreAutor

    class Meta:
        verbose_name = "autor"
        verbose_name_plural = "autores"



# Modelo de publicacion
class Publicacion(models.Model):
    fechaPublicacion = models.DateField()
    autor = models.ForeignKey(Autor, on_delete=models.CASCADE, verbose_name="autor")
    libro = models.ForeignKey(Libro, on_delete=models.CASCADE, verbose_name="libro")

    def __str__(self):
        return f'{self.libro} escrito por {self.autor} en {self.fechaPublicacion}'

    class Meta:
        verbose_name = 'publicacion'
        verbose_name_plural = 'publicaciones'


# Modelo de ejemplar
class Ejemplar(models.Model):
    libro = models.ForeignKey(Libro, on_delete=models.CASCADE, verbose_name="libro")
    localizacionEjemplar = models.CharField(max_length=150, help_text="Ingrese la localizacion")


    def __str__(self):
        return f'Ejemplar del libro {self.libro}'

    class Meta:
        verbose_name = 'ejemplar'
        verbose_name_plural = 'Ejemplares'


