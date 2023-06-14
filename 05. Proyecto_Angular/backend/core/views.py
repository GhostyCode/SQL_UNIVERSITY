from django.http import HttpResponse

def home(request):
    return HttpResponse("Hola, bienvenido a la biblioteca")