import 'package:flutter/material.dart';
import 'package:preferencias_usuario/src/share_prefs/preferencias_usuario.dart';
import 'package:preferencias_usuario/src/widgets/menu_widget.dart';

class HomePage extends StatelessWidget {
  static final String routename = 'home';
  final prefs = new Preferenciasusuario();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Preferencias de usuario'),
          backgroundColor: (prefs.colorSecundario) ? Colors.teal:Colors.blue,
        ),
        drawer: MenuWidget(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Color secundario ${prefs.colorSecundario}'),
            Divider(),
            Text('Genero ${prefs.genero}'),
            Divider(),
            Text('Nombre: ${prefs.nombreUsuario}'),
            Divider(),
          ],
        ),
      ),
    );
  }
}
