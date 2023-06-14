from django.contrib import admin
from django.urls import path, include
from . import views

urlpatterns = [
    path('admin/', admin.site.urls),
    path('',views.home, name='home'),
    path('usuarios/', include('Apps.usuarios.urls')),
    path('biblioteca/', include('Apps.biblioteca.urls')),
    path('prestamos/', include('Apps.prestamos.urls')),
]
