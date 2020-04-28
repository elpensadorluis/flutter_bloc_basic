import 'package:flutter/material.dart';
import 'package:formvalidation/src/bloc/provider.dart';
import 'package:formvalidation/src/preferencias_usuario/preferencias_usuario.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final bloc = Provider.of(context);
    final prefs = new PreferenciasUsuario();

    return Scaffold(
      appBar: AppBar(
        title: Text('Smart Tutor'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Email:  ${ bloc.email }'),
          Divider(),
          Text('Password:  ${ bloc.password }'),
          Divider(),
          Text('Token: ${ prefs.token } ')
        ],
      ),
    );
  }
}