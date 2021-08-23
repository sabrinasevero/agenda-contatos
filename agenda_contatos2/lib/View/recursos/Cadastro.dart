import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'BarraSuperior.dart';

class Cadastro extends StatefulWidget{
  @override
  State createState() => new CadastroState();

}
class CadastroState extends State<Cadastro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new BarraSuperior(
        
      ),
    );
  }
}