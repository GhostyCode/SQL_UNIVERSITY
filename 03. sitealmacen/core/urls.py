from django.contrib import admin
from django.urls import path, include
from . import views

urlpatterns = [
    path('admin/', admin.site.urls),
    path('',views.home, name="home"),
    path('ventas',include("Apps.ventas.urls")),
    path('productos',include("Apps.productos.urls")),
    path('clientes',include("Apps.clientes.urls")),
]
