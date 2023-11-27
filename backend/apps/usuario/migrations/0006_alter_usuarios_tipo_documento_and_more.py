# Generated by Django 4.2.5 on 2023-11-27 02:45

import apps.usuario.models
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('usuario', '0005_delete_usuario'),
    ]

    operations = [
        migrations.AlterField(
            model_name='usuarios',
            name='Tipo_Documento',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='usuario.tipo_documento'),
        ),
        migrations.AlterField(
            model_name='usuarios',
            name='Tipo_Genero',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='usuario.tipo_genero'),
        ),
        migrations.AlterField(
            model_name='usuarios',
            name='User_Avatar',
            field=models.ImageField(blank=True, null=True, upload_to=apps.usuario.models.archivo_upload_path),
        ),
        migrations.AlterField(
            model_name='usuarios',
            name='User_Documento',
            field=models.CharField(blank=True, max_length=45, null=True),
        ),
        migrations.AlterField(
            model_name='usuarios',
            name='password',
            field=models.CharField(default='pbkdf2_sha256$600000$24o6b8MqK7iapHMilFI38U$mnX1HkmMnP/d+mTCwqCO0EUbA5Pk2D+nrgURiZD9b4M=', max_length=128),
        ),
    ]