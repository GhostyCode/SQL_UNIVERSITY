from django.urls import path
from .views import PrestarView

app_name="prestamos"

urlpatterns = [
    path('',PrestarView.as_view(), name="home"),
]