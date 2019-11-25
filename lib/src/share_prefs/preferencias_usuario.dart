import 'package:preferencias_usuario/src/pages/home_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Preferenciasusuario {


  static final Preferenciasusuario _instancia =
      new Preferenciasusuario._internal(); 

  factory Preferenciasusuario() {
    return _instancia;
  }

  Preferenciasusuario._internal();
  SharedPreferences prefs;

  initPrefs() async {
    prefs = await SharedPreferences.getInstance();
  }

  //GET Y SET
  get genero{
    return prefs.getInt('genero') ?? 1;
  }

  set genero( int value){
    prefs.setInt('genero', value);
  }

   get colorSecundario{
    return prefs.getBool('colorSecundario') ?? false;
  }

  set colorSecundario( bool value){
    prefs.setBool('colorSecundario', value);
  }

  get nombreUsuario{
    return prefs.getString('nombreUsuario') ?? '';
  }

  set nombreUsuario( String value){
    prefs.setString('nombreUsuario', value);
  }

   get ultimaPagina{
    return prefs.getString('ultimaPagina') ?? HomePage.routename;
  }

  set ultimaPagina( String value){
    prefs.setString('ultimaPagina', value);
  }

}
