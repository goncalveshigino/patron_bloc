
part of 'user_bloc.dart';



@immutable
abstract class UsuarioEvent {}


class ActivarUsuario  extends UsuarioEvent {

  final Usuario usuario;


  ActivarUsuario(this.usuario);

}

class CambiarEdad extends UsuarioEvent {

 final int edad; 
 CambiarEdad(this.edad);

}