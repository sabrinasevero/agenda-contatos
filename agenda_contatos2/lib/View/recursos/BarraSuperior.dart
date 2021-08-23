

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BarraSuperior extends AppBar {
  BarraSuperior() : super(
    automaticallyImplyLeading: false, // Esconde o ícone original do menu
    centerTitle: true,

    leading: Builder(
      builder: (BuildContext context) {
        return IconButton(
          icon: FaIcon(
            FontAwesomeIcons.bars,
            color: Colors.pink.shade100,
            size: 32
          ),

          // Abre o Menu
          onPressed: () => Scaffold.of(context).openDrawer()
        );
      }
    ),

    title: Text(
      "Agenda de Contatos",
      style: TextStyle(
        fontSize: 28,
        color: Colors.pink.shade100
      )
    ),

    // Menu (ícone)
    iconTheme: IconThemeData(color: Colors.blue.shade100)
  );
}