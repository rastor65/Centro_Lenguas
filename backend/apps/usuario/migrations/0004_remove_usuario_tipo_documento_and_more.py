# Generated by Django 4.2.5 on 2023-11-27 02:11

import apps.usuario.models
import django.contrib.auth.models
from django.db import migrations, models
import django.db.models.deletion
import django.utils.timezone


class Migration(migrations.Migration):

    dependencies = [
        ('auth', '0012_alter_user_first_name_max_length'),
        ('usuario', '0003_alter_usuario_options_alter_usuario_managers_and_more'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='usuario',
            name='Tipo_Documento',
        ),
        migrations.RemoveField(
            model_name='usuario',
            name='Tipo_Genero',
        ),
        migrations.RemoveField(
            model_name='usuario',
            name='groups',
        ),
        migrations.RemoveField(
            model_name='usuario',
            name='user_permissions',
        ),
        migrations.CreateModel(
            name='Usuarios',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('last_login', models.DateTimeField(blank=True, null=True, verbose_name='last login')),
                ('is_superuser', models.BooleanField(default=False, help_text='Designates that this user has all permissions without explicitly assigning them.', verbose_name='superuser status')),
                ('first_name', models.CharField(blank=True, max_length=150, verbose_name='first name')),
                ('last_name', models.CharField(blank=True, max_length=150, verbose_name='last name')),
                ('email', models.EmailField(blank=True, max_length=254, verbose_name='email address')),
                ('is_staff', models.BooleanField(default=False, help_text='Designates whether the user can log into this admin site.', verbose_name='staff status')),
                ('is_active', models.BooleanField(default=True, help_text='Designates whether this user should be treated as active. Unselect this instead of deleting accounts.', verbose_name='active')),
                ('date_joined', models.DateTimeField(default=django.utils.timezone.now, verbose_name='date joined')),
                ('createdAt', models.DateField(auto_now_add=True, null=True)),
                ('updateAt', models.DateField(auto_now=True, null=True)),
                ('User_Avatar', models.ImageField(upload_to=apps.usuario.models.archivo_upload_path)),
                ('User_Documento', models.CharField(max_length=45)),
                ('resetToken', models.CharField(blank=True, max_length=256, null=True)),
                ('password', models.CharField(default='pbkdf2_sha256$600000$aDM34DwFOa7qRsnLh02Kq3$4hzEU4DzLkNRldLtxYKJcXtOLoIehFM8pB6QEQTi6rk=', max_length=128)),
                ('username', models.CharField(default='default_username', max_length=150)),
                ('Tipo_Documento', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='usuario.tipo_documento')),
                ('Tipo_Genero', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='usuario.tipo_genero')),
                ('groups', models.ManyToManyField(related_name='usuario_groups', to='auth.group')),
                ('user_permissions', models.ManyToManyField(related_name='usuario_user_permissions', to='auth.permission')),
            ],
            options={
                'verbose_name': 'user',
                'verbose_name_plural': 'users',
                'abstract': False,
            },
            managers=[
                ('objects', django.contrib.auth.models.UserManager()),
            ],
        ),
        migrations.AlterField(
            model_name='usuarioxlicencia',
            name='UserID',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='usuario.usuarios'),
        ),
    ]
