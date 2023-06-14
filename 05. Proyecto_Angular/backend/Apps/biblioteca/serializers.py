from rest_framework import serializers
from .models import Libro, Autor, Publicacion, Ejemplar


class PublicacionSerializer(serializers.ModelSerializer):
    class Meta:
        model = Publicacion
        fields = '__all__'


class AutorSerializer(serializers.ModelSerializer):
    publicaciones = PublicacionSerializer(many=True, read_only=True)

    class Meta:
        model = Autor
        fields = '__all__'


class LibroSerializer(serializers.ModelSerializer):
    publicaciones = PublicacionSerializer(many=True, read_only=True)

    class Meta:
        model = Libro
        fields = '__all__'


class EjemplarSerializer(serializers.ModelSerializer):
    class Meta:
        model = Ejemplar
        fields = '__all__'
