import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:patron_bloc/bloc/user/user_bloc.dart';
import 'package:patron_bloc/models/usuario.dart';


class Pagina2Page extends StatelessWidget {



  @override
  Widget build(BuildContext context) {


      // ignore: close_sinks
    final usuarioBloc =  BlocProvider.of<UsuarioBloc>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina 2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            MaterialButton(
              child: Text('Establecer Usuario', style: TextStyle( color: Colors.white ) ),
              color: Colors.blue,
              onPressed: () {

                final newUser = Usuario(

                  nombre: 'Gonçalves Higino', 
                  edad: 24, 
                  profesiones:  ['Fullstack Developer']

                );
                  usuarioBloc.add(
                  ActivarUsuario(newUser)
                );

              }
            ),

            MaterialButton(
              child: Text('Cambiar Edad', style: TextStyle( color: Colors.white ) ),
              color: Colors.blue,
              onPressed: () {

                usuarioBloc.add( CambiarEdad(25) );

              }
            ),

            MaterialButton(
              child: Text('Añadir Profesion', style: TextStyle( color: Colors.white ) ),
              color: Colors.blue,
              onPressed: () {

              }
            ),

          ],
        )
     ),
   );
  }
}