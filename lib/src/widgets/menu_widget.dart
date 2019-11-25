import 'package:flutter/material.dart';
import 'package:preferencias_usuario/src/pages/home_page.dart';
import 'package:preferencias_usuario/src/pages/settings_page.dart';
import 'package:preferencias_usuario/src/share_prefs/preferencias_usuario.dart';
class MenuWidget extends StatelessWidget {

  final prefs=new Preferenciasusuario();

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Container(),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/menu-img.jpg'),
                fit: BoxFit.cover
              )
            ),
          ),
          ListTile(
            leading: Icon(Icons.home,color: Colors.blue,),
            title: Text('Home'),
            onTap: (){
              prefs.ultimaPagina=HomePage.routename;
              Navigator.pushReplacementNamed(context, HomePage.routename);
            },
          ),
           ListTile(
            leading: Icon(Icons.party_mode,color: Colors.blue,),
            title: Text('Party mode'),
            onTap: (){},
          ),
           ListTile(
            leading: Icon(Icons.people,color: Colors.blue,),
            title: Text('People'),
            onTap: (){},
          ),
           ListTile(
            leading: Icon(Icons.settings,color: Colors.blue,),
            title: Text('Settings'),
            onTap: (){
              Navigator.pop(context);
              prefs.ultimaPagina=SettingsPage.routename;
              Navigator.pushReplacementNamed(context, SettingsPage.routename);
            }
          ),
        ],
      ),
    );
  }
}