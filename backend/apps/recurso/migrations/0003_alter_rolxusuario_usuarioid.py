# Generated by Django 4.2.5 on 2023-11-27 02:11

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('usuario', '0004_remove_usuario_tipo_documento_and_more'),
        ('recurso', '0002_recursos_createdat_recursos_updateat_and_more'),
    ]

    operations = [
        migrations.AlterField(
            model_name='rolxusuario',
            name='UsuarioID',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='usuario.usuarios'),
        ),
    ]
