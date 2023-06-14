from rest_framework.response import Response
from rest_framework.views import APIView

from .models import Usuario
from .serializers import UsuarioSerializer

class UsuarioView(APIView):
    def get(self, request):
        usuario = Usuario.objects.all()
        usuario_serializer = UsuarioSerializer(usuario, many=True)

        return Response(usuario_serializer.data)