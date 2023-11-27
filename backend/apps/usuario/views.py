from django.shortcuts import render
from rest_framework import generics, status
from rest_framework_simplejwt.tokens import RefreshToken
from rest_framework.response import Response
from django.contrib.auth import login
from django.contrib.auth.hashers import make_password, check_password
from django.contrib.auth.models import Group, Permission
from rest_framework.views import APIView
from .models import *
from .serializers import *
from rest_framework.generics import UpdateAPIView
from django.dispatch import receiver
from django_rest_passwordreset.signals import reset_password_token_created  # Dependiendo del paquete que utilices para restablecimiento de contraseñas
from django.core.mail import send_mail  # Para enviar correos electrónicos si es necesario

# Create your views here.



class UserUpdateView(UpdateAPIView):
    queryset = Usuarios.objects.all()  # Utiliza el queryset de Usuarios
    serializer_class = UsuarioSerializer  # Usa el serializador definido para Usuarios

    def get_object(self):
        try:
            request_user = self.kwargs['pk']
            user = Usuarios.objects.get(pk=request_user)
            return user
        except Usuarios.DoesNotExist:
            return None
        except Exception as e:
            response, code = create_response(
                status.HTTP_400_BAD_REQUEST, 'Error', e)
            return Response(response, status=code)

    def perform_update(self, serializer):
        serializer.save()

    def put(self, request, *args, **kwargs):
        partial = kwargs.pop('partial', False)
        user = self.get_object()

        if user is None:
            response, code = create_response(
                status.HTTP_400_BAD_REQUEST, 'Password Error', 'User Not found')
            return Response(response, status=code)

        try:
            user_serializers = UsuarioSerializer(
                user, data=request.data, partial=partial)
            if user_serializers.is_valid():
                self.perform_update(user_serializers)
                response, code = create_response(
                    status.HTTP_200_OK, 'User Updated Successfully', 'User updated')
                return Response(response, status=code)
            return Response(user_serializers.errors, status=status.HTTP_400_BAD_REQUEST)
        except (AttributeError, Exception) as e:
            response, code = create_response(
                status.HTTP_400_BAD_REQUEST, 'Not Found', e.args)
            return Response(response, status=code)

class UserChangePasswordView(UpdateAPIView):
    queryset = Usuarios.objects.all()  # Utiliza el queryset de Usuarios
    serializer_class = UsuarioSerializer  # Utiliza el serializador para cambiar la contraseña

    def get_object(self):
        try:
            request_user = self.kwargs['pk']
            user = Usuarios.objects.get(pk=request_user)
            return user
        except (Usuarios.DoesNotExist, TypeError):
            return None
        except (BaseException, TypeError) as e:
            return None

    def perform_update(self, serializer):
        if 'original-password' in self.request.data:
            original_password = self.request.data['original-password']
            new_password = self.request.data['password']

            if check_password(original_password, self.request.user.password):
                hashed_password = make_password(new_password)
                serializer.save(password=hashed_password)
            else:
                # Handle incorrect original password scenario
                # You might want to return an error response here
                pass
        else:
            serializer.save()

    def patch(self, request, *args, **kwargs):
        partial = kwargs.pop('partial', False)
        user = self.get_object()

        if user is None:
            response, code = create_response(
                status.HTTP_400_BAD_REQUEST, 'Not Found', 'User not found')
            return Response(response, status=code)

        if 'original-password' not in self.request.data:
            response, code = create_response(
                status.HTTP_400_BAD_REQUEST, 'Password Error', 'Original password not found')
            return Response(response, status=code)

        user_serializers = UsuarioSerializer(
            user, data=request.data, partial=partial)

        try:
            if user_serializers.is_valid():
                self.perform_update(user_serializers)
                response, code = create_response(
                    status.HTTP_200_OK, 'Password', 'Password Changed')
                return Response(response, status=code)
            return Response(user_serializers.errors, status=status.HTTP_400_BAD_REQUEST)
        except (AttributeError, Exception) as e:
            response, code = create_response(
                status.HTTP_400_BAD_REQUEST, 'Error', str(e))
            return Response(response, status=code)

class AuthLogin(APIView):
    def get_tokens_for_user(self, user):
        refresh = RefreshToken.for_user(user)
        return {
            'refresh': str(refresh),
            'access': str(refresh.access_token),
        }

    def post(self, request, *args, **kwargs):
        data = {}
        if 'email' in request.data:
            data['username'] = request.data['email']
            data['password'] = request.data['password']
        else:
            data = request.data

        serializer = LoginSerializer(
            data=data, context={'request': self.request})
        if not serializer.is_valid():
            response, code = create_response(
                status.HTTP_400_BAD_REQUEST, 'Error', serializer.errors)
            return Response(response, status=code)

        # Aquí necesitarás obtener el usuario según el método de autenticación que uses
        try:
            user = Usuarios.objects.get(username=serializer.validated_data['username'])
        except Usuarios.DoesNotExist:
            response, code = create_response(
                status.HTTP_400_BAD_REQUEST, 'Error', 'User not found')
            return Response(response, status=code)

        # Realizar la autenticación del usuario
        if not user.check_password(serializer.validated_data['password']):
            response, code = create_response(
                status.HTTP_400_BAD_REQUEST, 'Error', 'Incorrect password')
            return Response(response, status=code)

        login(request, user)
        token = self.get_tokens_for_user(user)

        # Obteniendo recursos relacionados con el usuario
        resources = flatList([e.resources.prefetch_related(
            'resources') for e in user.roles.all()])
        menu = ResourcesSerializer(set(resources), many=True)

        request.session['refresh-token'] = token['refresh']
        response_data = {
            'token': token,
            'user': {
                'name': user.username,
                'id': user.id
            },
            'menu': menu.data
        }
        response, code = create_response(
            status.HTTP_200_OK, 'Login Success', response_data)
        return Response(response, status=code)

class LogoutView(APIView):
    def get(self, request, *args, **kwargs):
        try:
            jwt_token = request.session.get('refresh-token', None)

            # Limpiando cookies
            resp = HttpResponse('content')
            resp.cookies.clear()
            resp.flush()

            # Invalidando el token JWT
            token = RefreshToken(jwt_token)
            token.blacklist()

            # Cerrando sesión
            logout(request)
            request.session.clear()
            request.session.flush()

            response, code = create_response(
                status.HTTP_200_OK, 'Logout Success', 'Ok')
            return Response(response, code)
        except TokenError as TkError:
            response, code = create_response(
                status.HTTP_400_BAD_REQUEST, 'Error', str(TkError))
            return Response(response, code)
        except Exception as e:
            response, code = create_response(
                status.HTTP_400_BAD_REQUEST, 'Error', str(e))
            return Response(response, code)

class RegistroView(APIView):
    def post(self, request):
        serializer = UsuarioSerializer(data=request.data)
        if serializer.is_valid():
            user = serializer.save()
            return Response({'message': 'Registro exitoso'}, status=201)
        return Response(serializer.errors, status=400)

class ProfileView(generics.RetrieveUpdateAPIView):
    serializer_class = UsuarioSerializer
    http_method_names = ['get', 'patch']

    def get_object(self):
        if self.request.user.is_authenticated:
            return self.request.user

@receiver(reset_password_token_created)
def password_reset_token_created(sender, instance, reset_password_token, *args, **kwargs):
    print(f"\nRecupera la contraseña del correo '{reset_password_token.user.email}' usando el token '{reset_password_token.key}' desde la API http://localhost:8000/api/auth/reset/confirm/.")

    # Aquí puedes agregar lógica para enviar un correo electrónico con el token de restablecimiento
    # Ejemplo de envío de correo electrónico utilizando la función send_mail de Django
    send_mail(
        'Subject here',
        f'Password reset token: {reset_password_token.key}',
        'from@example.com',
        [reset_password_token.user.email],
        fail_silently=False,
    )









class UsuarioListView(generics.ListCreateAPIView):
    queryset = Usuarios.objects.all()
    serializer_class = UsuarioSerializer

class UsuarioDetailView(generics.RetrieveUpdateDestroyAPIView):
    queryset = Usuarios.objects.all()
    serializer_class = UsuarioSerializer
    
class Tipo_DocumentoListView(generics.ListCreateAPIView):
    queryset = Tipo_Documento.objects.all()
    serializer_class = Tipo_DocumentoSerializer

class Tipo_DocumentoDetailView(generics.RetrieveUpdateDestroyAPIView):
    queryset = Tipo_Documento.objects.all()
    serializer_class = Tipo_DocumentoSerializer
    
class Tipo_GeneroListView(generics.ListCreateAPIView):
    queryset = Tipo_Genero.objects.all()
    serializer_class = Tipo_GeneroSerializer

class Tipo_GeneroDetailView(generics.RetrieveUpdateDestroyAPIView):
    queryset = Tipo_Genero.objects.all()
    serializer_class = Tipo_GeneroSerializer
    
class UsuarioxLicenciaListView(generics.ListCreateAPIView):
    queryset = UsuarioxLicencia.objects.all()
    serializer_class = UsuarioxLicenciaSerializer

class UsuarioxLicenciaDetailView(generics.RetrieveUpdateDestroyAPIView):
    queryset = UsuarioxLicencia.objects.all()
    serializer_class = UsuarioxLicenciaSerializer






