# Generated by Django 4.2.5 on 2023-11-26 00:55

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('recurso', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='recursos',
            name='createdAt',
            field=models.DateField(auto_now_add=True, null=True),
        ),
        migrations.AddField(
            model_name='recursos',
            name='updateAt',
            field=models.DateField(auto_now=True, null=True),
        ),
        migrations.AddField(
            model_name='recursosxrol',
            name='createdAt',
            field=models.DateField(auto_now_add=True, null=True),
        ),
        migrations.AddField(
            model_name='recursosxrol',
            name='updateAt',
            field=models.DateField(auto_now=True, null=True),
        ),
        migrations.AddField(
            model_name='rol',
            name='createdAt',
            field=models.DateField(auto_now_add=True, null=True),
        ),
        migrations.AddField(
            model_name='rol',
            name='updateAt',
            field=models.DateField(auto_now=True, null=True),
        ),
        migrations.AddField(
            model_name='rolxusuario',
            name='createdAt',
            field=models.DateField(auto_now_add=True, null=True),
        ),
        migrations.AddField(
            model_name='rolxusuario',
            name='updateAt',
            field=models.DateField(auto_now=True, null=True),
        ),
    ]