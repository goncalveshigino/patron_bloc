
part of 'user_bloc.dart';


class UsuarioState {

  final bool existeUsuario;
  final Usuario usuario;

  UsuarioState({ Usuario usuario })
  :usuario = usuario ?? null, 
  existeUsuario = ( usuario != null ) ? true : false;

  



}