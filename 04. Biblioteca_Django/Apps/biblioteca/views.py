from django.shortcuts import render
from django.http import HttpResponse

def homeBiblioteca(request):
    return HttpResponse("Bienvenido a la aplicacion Biblioteca")

