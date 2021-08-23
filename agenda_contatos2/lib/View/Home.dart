

import 'package:agenda_contatos2/View/recursos/BarraSuperior.dart';
import 'package:agenda_contatos2/View/recursos/Cadastro.dart';
import 'package:agenda_contatos2/View/recursos/Menu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Busca.dart';

class Home extends StatefulWidget {
  @override
  State createState() => new HomeState();
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Barra de título
      appBar: new BarraSuperior(),

      // Menu (hambúrguer)
      drawer: MenuDrawer(),

      // Corpo do App
       body:SingleChildScrollView(
         child: Column(
           children: [
             new SizedBox(height: 25,), //espaçamento
              new Container( 
             padding: EdgeInsets.all(25),
               child: Align(
                 alignment: Alignment.center,
                 child: Column(
                 children: [
                 //título
                new Text(
                  "opa",
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.blue.shade200
                  ),
                ),

                //botão buscar contatos
                new SizedBox(height: 25,),
                new Builder(
                  builder: (BuildContext context) {
                  return ElevatedButton(
                    child: Container(
                      width: 300,
                      padding: EdgeInsets.all(16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                         new FaIcon(
                            FontAwesomeIcons.search,
                            size: 24,
                            color: Colors.blue.shade200,
                          ),
                        new Text(
                          "Buscar Contatos",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                          ),
                        )
                        ],
                      ),
                    ),

                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => new Busca())
                      );

                    }, 
                    style: ElevatedButton.styleFrom(
                      primary: Colors.pink.shade200,

                    )
                    );
                  }
                ),

                //botão cadastras contatos
                
                new SizedBox(height: 25,),
                new Builder(
                  builder: (BuildContext context) {
                  return ElevatedButton(
                    child: Container(
                      width: 300,
                      padding: EdgeInsets.all(16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                         new FaIcon(
                            FontAwesomeIcons.plus ,
                            size: 24,
                            color: Colors.blue.shade200,
                          ),
                        new Text(
                          "Cadastrar Contato",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                          ),
                        )
                        ],
                      ),
                    ),

                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => new Cadastro())
                      );

                    }, 
                    style: ElevatedButton.styleFrom(
                      primary: Colors.pink.shade300,
                      
                    )
                    );
                  }
                )
                 ],
               ), )
             )
           ]
         )
       )
    );
  }
}