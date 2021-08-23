
import 'Contato.dart';

class ContatoService {
  // Lista de Contatos (GLOBAL)
  static List<Contato> contatos = [];

  // Método para cadastrar um Contato
  String cadastrarContato(Contato contato) {
    contatos.add(contato);

    return "Novo contato: ${contato.nome} ${contato.sobrenome}";
  }

  // Método que retorna uma lista de contatos
  List listarContatos() {

    contatos = [ 
 Contato(
  id: 1,
   nome: "Chaves",
    sobrenome: "Do Oito",
     email: "chavesdo8@gmail.com",
      fone: "(51) 99999-9999",
       foto: "img/fotos/chaves.jfif"
),
Contato(
  id: 2,
   nome: "Chiquinha",
    sobrenome: "Valdés ",
     email: "chiquinha@gmail.com",
      fone: "(51) 99999-9988",
       foto: "img/fotos/chiquinha.jfif"
),
Contato(
  id: 3,
   nome: "Dona",
    sobrenome: "Clotilde",
     email: "bruxado71@gmail.com",
      fone: "(51) 99999-9971",
       foto: "img/fotos/dona_clotildes.jfif"
),
Contato(
  id: 4,
   nome: "Dona",
    sobrenome: "Florinda",
     email: "florinda@gmail.com",
      fone: "(51) 99999-9966",
       foto: "img/fotos/dona_florinda.jfif"
),
Contato(
  id: 5,
   nome: "Nhonho",
    sobrenome: "Barriga",
     email: "nhonho@gmail.com",
      fone: "(51) 99999-9900",
       foto: "img/fotos/nhonho.jfif"
),
Contato(
  id: 6,
   nome: "Pópis",
    sobrenome: "Serafina",
     email: "popis@gmail.com",
      fone: "(51) 99999-7777",
       foto: "img/fotos/popis.jfif"
),

Contato(
  id: 7,
   nome: "Professor",
    sobrenome: "Girafales",
     email: "mestrelinguiça@gmail.com",
      fone: "(51) 99999-4444",
       foto: "img/fotos/professor_girafales.jfif"
),
Contato(
  id: 8,
   nome: "Quico",
    sobrenome: "Frederico",
     email: "quico@gmail.com",
      fone: "(51) 99999-8888",
       foto: "img/fotos/quico.jfif"
),

Contato(
  id: 9,
   nome: "Senhor",
    sobrenome: "Barriga",
     email: "pagueoaluguel@gmail.com",
      fone: "(51) 99999-9900",
       foto: "img/fotos/senhor_barriga.jfif"
),
Contato(
  id: 10,
   nome: "Seu",
    sobrenome: "Madruga",
     email: "madruguinha@gmail.com",
      fone: "(51) 99999-9933",
       foto: "img/fotos/seu_madruga.jfif"
),
    ];

    return contatos;

  }
}