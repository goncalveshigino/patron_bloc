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
  Stream<UsuarioState> mapEventToState(UsuarioEvent event) {
      

  

  }




}
