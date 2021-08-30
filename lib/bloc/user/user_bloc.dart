import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:patron_bloc/models/usuario.dart';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'user_states.dart';
part 'user_event.dart';

class UsuarioBloc extends Bloc<UsuarioEvent, UsuarioState> {


  


  UsuarioBloc() : super( UsuarioState() );

  @override
  Stream<UsuarioState> mapEventToState(UsuarioEvent event) async* {
      
   
   if( event is ActivarUsuario ){
     yield UsuarioState( usuario: event.usuario );
   }else if( event is CambiarEdad ){
     yield UsuarioState(
       usuario: state.usuario.copyWith( edad: event.edad )
     );
   } else if( event is AgregarProfesion ){
     yield UsuarioState(
         usuario: state.usuario.copyWith(
           profesiones: [
             ...state.usuario.profesiones, 
             event.profesion
           ]
         )
    );
   }


  }




}
