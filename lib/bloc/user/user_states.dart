
part of 'user_bloc.dart';


class UsuarioState {

  final bool existeUsuario;
  final Usuario usuario;

  UsuarioState({ Usuario user })
  :usuario = user ?? null, 
  existeUsuario = ( user != null ) ? true : false;

  



}