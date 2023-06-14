# Generated by Django 4.2.2 on 2023-06-13 22:32

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('usuarios', '0001_initial'),
        ('prestamos', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='prestar',
            name='usuario',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='usuarios.usuario', verbose_name='usuario'),
        ),
    ]
