from django.db import models
from Apps.biblioteca.models import Ejemplar

class Usuario(models.Model):
    nombreUsuario = models.CharField(max_length=100, help_text="Ingrese el nombre del usuario")
    apellidosUsuario = models.CharField(max_length=100, help_text="Ingrese los apellidos del usuario")
    direccionUsuario = models.CharField(max_length=100, help_text="Ingrese la direccion del usuario")
    telefonoUsuario = models.CharField(max_length=12, help_text="Ingrese el Telefono del usuario")
    ejemplar=models.ManyToManyField(Ejemplar, through='prestamos.Prestar', verbose_name="prestar")

    def __str__(self):
        return self.nombreUsuario

    class Meta:
        verbose_name = "usuario"
        verbose_name_plural = "usuarios"
