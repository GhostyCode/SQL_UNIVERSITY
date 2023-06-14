from django.urls import path
from .views import UsuarioView

app_name="usuarios"

urlpatterns = [
    path('',UsuarioView.as_view(), name="home"),
]