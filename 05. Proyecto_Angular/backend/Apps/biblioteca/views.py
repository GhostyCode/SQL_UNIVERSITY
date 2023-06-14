from rest_framework.response import Response
from rest_framework.views import APIView

from Apps.biblioteca.models import Libro, Autor, Publicacion, Ejemplar
from Apps.biblioteca.serializers import LibroSerializer, AutorSerializer, PublicacionSerializer, EjemplarSerializer

class BibliotecaView(APIView):
    def get(self, request):
        biblioteca = Libro.objects.all()
        libro_serializer = LibroSerializer(biblioteca, many=True)
        
        return Response(libro_serializer.data)
    
class AutorView(APIView):
    def get(self, request):
        autor = Autor.objects.all()
        autor_serializer = AutorSerializer(autor, many=True)
        
        return Response(autor_serializer.data)
    
class PublicacionView(APIView):
    def get(self, request):
        publicacion = Publicacion.objects.all()
        publicacion_serializer = PublicacionSerializer(publicacion, many=True)
        
        return Response(publicacion_serializer.data)
    
class EjemplarView(APIView):
    def get(self, request):
        ejemplar = Ejemplar.objects.all()
        ejemplar_serializer = EjemplarSerializer(ejemplar, many=True)
        
        return Response(ejemplar_serializer.data)
