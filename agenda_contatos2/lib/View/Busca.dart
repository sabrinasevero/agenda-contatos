
import 'package:agenda_contatos2/Model/Contato.dart';
import 'package:agenda_contatos2/Model/ContatoService.dart';
import 'package:agenda_contatos2/View/recursos/BarraSuperior.dart';
import 'package:agenda_contatos2/View/recursos/Menu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'Perfil.dart';

class Busca extends StatefulWidget {
  @override
  State createState() => new BuscaState();
}

class BuscaState extends State<Busca> {
  // Objeto da classe ContatoService (Model)
  ContatoService service = new ContatoService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Barra de Título
      appBar: new BarraSuperior(),

      // Menu (hambúrguer)
      drawer: new MenuDrawer(),

      // Corpo do App
      body: ListView.builder(
        padding: EdgeInsets.fromLTRB(8, 8, 8, 75),
        itemCount: service.listarContatos().length,
        itemBuilder: (BuildContext context, int index) {
          // Guarda o retorno da lista no objeto da classe
          Contato contato = service.listarContatos().elementAt(index);

          
         return Container(
            color: Colors.grey.shade800,
            padding: EdgeInsets.all(5),
            margin: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
            child: ListTile(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Foto (miniatura)
                  new ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.asset(
                      contato.foto,
                      width: 75,
                      height: 75,
                      fit: BoxFit.cover
                    )
                  ),
                  // Nome e Fone
                  new Column(
                    children: [
                      new Text(
                        contato.nome + " " + contato.sobrenome,
                        style: TextStyle(
                          color: Colors.grey.shade400,
                          fontSize: 24
                        )
                      ),

                      SizedBox(height: 10),

                      new Text(
                        contato.fone,
                        style: TextStyle(
                          fontSize: 18
                        )
                      )
                    ],
                  ),

                  SizedBox(width: 15)
                ]
              ),

              trailing: IconButton(
                icon: FaIcon(
                  FontAwesomeIcons.chevronRight,
                  color: Colors.grey,
                  size: 32
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => new Perfil(id: contato.id)
                                  )
                  );
                }
              )
            )
          );
        }
      ),

      //botão flutuante
      floatingActionButton: FloatingActionButton(
        child: FaIcon(
          FontAwesomeIcons.plus,
          size: 32,
          color: Colors.pink.shade300,
        ),
        onPressed: (){

        },
      ),

    );
  }
}