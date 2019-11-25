import 'package:flutter/material.dart';
import 'package:preferencias_usuario/src/share_prefs/preferencias_usuario.dart';
import 'package:preferencias_usuario/src/widgets/menu_widget.dart';


class SettingsPage extends StatefulWidget {
  const SettingsPage({Key key}) : super(key: key);
  static final String routename='settings';

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {

  bool _colorSecundario;
  int genero;
  String nombre;
  final prefs = new Preferenciasusuario();

  TextEditingController _textController;

  @override
  void initState() {
    genero=prefs.genero;
    _colorSecundario=prefs.colorSecundario;
    nombre=prefs.nombreUsuario;
    _textController=new TextEditingController(text: nombre);
    
  }

 

  setSelectedRadio(int valor) {

    prefs.genero=valor;
    genero=valor;
    setState(() {
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        drawer: MenuWidget(),
        appBar: AppBar(
          title: Text('Ajustes'),
           backgroundColor: (prefs.colorSecundario) ? Colors.teal:Colors.blue,
        ),
        body: Center(
          child: ListView(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(5.0),
                child: Text('Settings',style: TextStyle(fontSize: 45.0,fontWeight: FontWeight.bold),),
              ),
              Divider(),
              SwitchListTile(
                value: _colorSecundario,
                title: Text('Color secundario'),
                onChanged: (value){
                  setState(() {
                    _colorSecundario=value;
                    prefs.colorSecundario=value;
                  });
                  
                },
              ),
              RadioListTile(
                value: 1,
                title: Text('Masculino'),
                groupValue: genero,
                onChanged: setSelectedRadio,
              ),
              RadioListTile(
                value: 2,
                title: Text('Femenino'),
                groupValue: genero,
                onChanged: setSelectedRadio,
              ),
              Divider(),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: TextField(
                  controller: _textController,
                  decoration: InputDecoration(
                    labelText: 'Nombre',
                    helperText: 'Nombre de la pernosa usando el telefono'
                  ),
                  onChanged: (value){
                    
                    setState(() {
                      nombre=value;
                      prefs.nombreUsuario=value;
                    });
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}