from django.urls import path
from . import views

app_name="biblioteca"

urlpatterns = [
    path('',views.homeBiblioteca,name='home'),
]