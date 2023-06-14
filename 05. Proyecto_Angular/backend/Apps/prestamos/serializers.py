from rest_framework import serializers
# from Apps.usuarios.serializers import UsuarioSerializer
from Apps.biblioteca.serializers import EjemplarSerializer
from .models import Prestar

class PrestarSerializer(serializers.ModelSerializer):
    # usuario = UsuarioSerializer()
    ejemplar = EjemplarSerializer()

    class Meta:
        model = Prestar
        fields = '__all__'