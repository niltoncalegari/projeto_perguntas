import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

main() {
  runApp(PerguntaApp());
}

class _PerguntaAppState extends State<PerguntaApp> {
  var perguntaSelecionada = 0;

  void _responder() {
    setState(() {
      perguntaSelecionada++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final perguntas = [
      {
        'texto': "Qual sua cor favorita?",
        'respostas': ['Verde', 'Azul', 'Vermelho', 'Preto']
      },
      {
        'texto': "Qual seu game favorito??",
        'respostas': ['The Witcher 3', 'Call of Duty', 'Zelda', 'Fortnite']
      },
      {
        'texto': "Qual seu animal favorito??",
        'respostas': ['Cachorro', 'Gato', 'Passaro', 'Rato']
      },
      {
        'texto': "Qual sua comida favorita?",
        'respostas': ['Lasanha', 'Pizza', 'Hamburguer', 'Sushi']
      },
    ];

    List<String> respostas = perguntas[perguntaSelecionada]['respostas'];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(
          children: [
            Questao(perguntas[perguntaSelecionada]['texto']),
            ...respostas.map((t) => Resposta(t, _responder)).toList(),
          ],
        ),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  @override
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
