from django.shortcuts import render
from django.http import HttpResponse

def homePrestamos(request):
    return HttpResponse("Bienvenido a la aplicacion Prestamos")

