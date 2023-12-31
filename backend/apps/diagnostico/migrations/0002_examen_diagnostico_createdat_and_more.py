# Generated by Django 4.2.5 on 2023-11-27 02:02

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('diagnostico', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='examen_diagnostico',
            name='createdAt',
            field=models.DateField(auto_now_add=True, null=True),
        ),
        migrations.AddField(
            model_name='examen_diagnostico',
            name='updateAt',
            field=models.DateField(auto_now=True, null=True),
        ),
        migrations.AddField(
            model_name='pregunta',
            name='createdAt',
            field=models.DateField(auto_now_add=True, null=True),
        ),
        migrations.AddField(
            model_name='pregunta',
            name='updateAt',
            field=models.DateField(auto_now=True, null=True),
        ),
        migrations.AddField(
            model_name='preguntaxexamendiagnostico',
            name='createdAt',
            field=models.DateField(auto_now_add=True, null=True),
        ),
        migrations.AddField(
            model_name='preguntaxexamendiagnostico',
            name='updateAt',
            field=models.DateField(auto_now=True, null=True),
        ),
        migrations.AddField(
            model_name='respuesta',
            name='createdAt',
            field=models.DateField(auto_now_add=True, null=True),
        ),
        migrations.AddField(
            model_name='respuesta',
            name='updateAt',
            field=models.DateField(auto_now=True, null=True),
        ),
        migrations.AddField(
            model_name='respuestaxpregunta',
            name='createdAt',
            field=models.DateField(auto_now_add=True, null=True),
        ),
        migrations.AddField(
            model_name='respuestaxpregunta',
            name='updateAt',
            field=models.DateField(auto_now=True, null=True),
        ),
        migrations.AddField(
            model_name='tipopregunta',
            name='createdAt',
            field=models.DateField(auto_now_add=True, null=True),
        ),
        migrations.AddField(
            model_name='tipopregunta',
            name='updateAt',
            field=models.DateField(auto_now=True, null=True),
        ),
    ]
