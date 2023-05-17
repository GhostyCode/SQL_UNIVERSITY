from django.db import models
from Apps.usuarios.models import Usuario
from Apps.biblioteca.models import Ejemplar

# Modelo de prestar
class Prestar(models.Model):
    usuario = models.ForeignKey(Usuario, on_delete=models.CASCADE, verbose_name="usuario")
    ejemplar = models.ForeignKey(Ejemplar, on_delete=models.CASCADE, verbose_name="ejemplar")
    fechaDevPrestar = models.DateField()
    fechaPresPrestar = models.DateField()


    def __str__(self):
        return f'{self.usuario}: presto un {self.ejemplar}'

    class Meta:
        verbose_name = 'prestar'
        verbose_name_plural = 'prestamos'
