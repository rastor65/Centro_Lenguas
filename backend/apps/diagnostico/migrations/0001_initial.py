# Generated by Django 4.2.5 on 2023-11-26 00:55

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Examen_Diagnostico',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('ExDi_Nombre', models.CharField(max_length=250)),
                ('ExDi_Descripcion', models.TextField()),
            ],
        ),
        migrations.CreateModel(
            name='Pregunta',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('Preg_Nivel', models.IntegerField()),
                ('Preg_Pregunta', models.CharField(max_length=250)),
                ('Preg_RespuestaCorrecta', models.CharField(max_length=250)),
                ('preg_RespuestaSeleccionada', models.CharField(max_length=250)),
            ],
        ),
        migrations.CreateModel(
            name='Respuesta',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('Resp_Contenido', models.CharField(max_length=250)),
            ],
        ),
        migrations.CreateModel(
            name='TipoPregunta',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('TiPr_Nombre', models.CharField(max_length=250)),
            ],
        ),
        migrations.CreateModel(
            name='RespuestaxPregunta',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('Pregunta_ID', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='diagnostico.pregunta')),
                ('Respuesta_ID', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='diagnostico.respuesta')),
            ],
        ),
        migrations.CreateModel(
            name='PreguntaxExamenDiagnostico',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('Examen_Diagnostico_ID', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='diagnostico.examen_diagnostico')),
                ('Pregunta_ID', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='diagnostico.pregunta')),
            ],
        ),
        migrations.AddField(
            model_name='pregunta',
            name='TipoPregunta_ID',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='diagnostico.tipopregunta'),
        ),
    ]
