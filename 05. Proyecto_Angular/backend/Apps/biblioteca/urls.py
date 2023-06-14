from django.urls import path
from .views import BibliotecaView, AutorView, PublicacionView, EjemplarView

app_name="biblioteca"

urlpatterns = [
    path('',BibliotecaView.as_view(), name="home"),
    path('autor/',AutorView.as_view(), name="autor"),
    path('publicacion/',PublicacionView.as_view(), name="publicacion"),
    path('ejemplar/',EjemplarView.as_view(), name="ejemplar"),
]