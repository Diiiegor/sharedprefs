import 'package:flutter/material.dart';
import 'package:preferencias_usuario/src/pages/home_page.dart';
import 'package:preferencias_usuario/src/pages/settings_page.dart';
import 'package:preferencias_usuario/src/share_prefs/preferencias_usuario.dart';
 
void main() async {
  final prefs=new Preferenciasusuario();
  await prefs.initPrefs();
  runApp(MyApp());
}
 
class MyApp extends StatelessWidget {
final prefs=new Preferenciasusuario();
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Preferencias',
      initialRoute: prefs.ultimaPagina,
      routes: {
        HomePage.routename    :(BuildContext context)=>HomePage(),
        SettingsPage.routename:(BuildContext context)=>SettingsPage(),
      },
    );
  }
}