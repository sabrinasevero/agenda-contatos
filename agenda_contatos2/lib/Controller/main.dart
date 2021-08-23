

import 'package:agenda_contatos2/View/Home.dart';
import 'package:agenda_contatos2/View/recursos/Estilo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(
  new MaterialApp(
    title: "Agenda de Contatos",
    home: new Home(),
    debugShowCheckedModeBanner: false,
    theme: estilo(),
  )
);