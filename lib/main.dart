import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

main() {
  runApp(PerguntaApp());
}

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  final _perguntas = const [
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

  void _responder() {
    setState(() {
      if (isPerguntaSelecionada) {
        _perguntaSelecionada++;
      }      
    });
    print(_perguntaSelecionada);
  }

  bool get isPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<String> respostas = isPerguntaSelecionada ? _perguntas[_perguntaSelecionada]['respostas'] : null;

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: isPerguntaSelecionada ? Column(
          children: [
            Questao(_perguntas[_perguntaSelecionada]['texto']),
            ...respostas.map((t) => Resposta(t, _responder)).toList(),
          ],
        ) : null,
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
