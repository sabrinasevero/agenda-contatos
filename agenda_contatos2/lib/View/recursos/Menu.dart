

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../Busca.dart';
import '../Home.dart';

class MenuDrawer extends StatelessWidget {
//atributos vindos do banco de dados
final String usuario = "Sabrina Severo";
final String email = "sabrinasevero6@gmail.com";
final String fotoPerfil = "img/avatar.png";

Text mostrarTitulo(String texto){
  return Text(
    texto,
    style: TextStyle(
      fontSize: 18 
    )
  );
}

  @override
  Widget build(BuildContext context){
    return Drawer(
      child: ListView(
        children: [
          //informações usuario
          UserAccountsDrawerHeader(
            accountName: Text(usuario),
             accountEmail: Text(email),
             currentAccountPicture: CircleAvatar(
               child: ClipRRect(
                child: Image.asset(fotoPerfil),
                borderRadius: BorderRadius.circular(50)
              )
            )
          ),

          //home
        ListTile(
          title: Text("Home"),
          subtitle: Text("Página Inicial"),
          trailing: FaIcon(
            FontAwesomeIcons.chevronRight),
          leading: FaIcon (
            FontAwesomeIcons.home, 
            color: Colors.pink.shade100,
          ),
          onTap: (){
            Navigator.push(
              context,
               MaterialPageRoute(builder: (context) => Home()));

          }
        ),
        //contatos
         new  ListTile(
           title: Text("Contatos"),
           subtitle: Text("Gerenciar Contatos"),
           trailing: FaIcon(
             FontAwesomeIcons.chevronRight),
             leading: FaIcon(
               FontAwesomeIcons.addressBook,
               color: Colors.pink.shade100,
             ),
             onTap: (){
               Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => new Busca()));
             },
           ),

           //Perfil
           new ListTile(
             title: Text("Perfil"),
             subtitle: Text("Editar Informações"),
             trailing: FaIcon(
               FontAwesomeIcons.chevronRight),
               leading: FaIcon(
                 FontAwesomeIcons.user,
                 color: Colors.pink.shade100,
               ),

              //Abre a tela de contatos
              onTap: (){
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder:(context) => Home()));
              }
             ),
           //Configurações
           new ListTile(
             title: Text("Configurações"),
             subtitle: Text("Ajustes no Sistema"),
             trailing: FaIcon(
               FontAwesomeIcons.chevronRight),
               leading: FaIcon(
                 FontAwesomeIcons.cog,
                 color: Colors.pink.shade100,
               ),
               //Abre a tela de configurações
               onTap: (){
                 Navigator.push(
                   context,
                  MaterialPageRoute(builder: (context) => Home()));
               }
             ),
           //LogOut
        new ListTile(
          title: Text("Logout"),
          subtitle: Text("Sair do Sistema"),
          trailing: FaIcon(
            FontAwesomeIcons.chevronRight),
          leading: FaIcon(
            FontAwesomeIcons.signOutAlt,
            color: Colors.pink.shade100,
          ),
          //abre a tela de logout
          onTap: (){
            Navigator.push(context,
            MaterialPageRoute(builder: (context) =>Home()));
          }
          ),
        
      
        ]
      )
    );
  }
}