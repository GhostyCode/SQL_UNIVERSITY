from django.shortcuts import render
from django.http import HttpResponse

def homeUsuarios(request):
    return HttpResponse("Bienvenido a la aplicacion Usuarios")


