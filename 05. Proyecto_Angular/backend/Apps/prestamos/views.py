from rest_framework.response import Response
from rest_framework.views import APIView

from .models import Prestar
from .serializers import PrestarSerializer

class PrestarView(APIView):
    def get(self, request):
        prestar = Prestar.objects.all()
        prestar_serializer = PrestarSerializer(prestar, many=True)

        return Response(prestar_serializer.data)