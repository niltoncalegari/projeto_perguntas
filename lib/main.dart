import 'package:flutter/material.dart';
import './resultado.dart';
import './questionario.dart';

main() {
  runApp(PerguntaApp());
}

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  var _notaTotal = 0;
  final _perguntas = const [
    {
      'texto': "Qual sua cor favorita?",
      'respostas': [
        {'texto': 'Verde', 'nota': 9},
        {'texto': 'Azul', 'nota': 2},
        {'texto': 'Vermelho', 'nota': 1},
        {'texto': 'Preto', 'nota': 3},
      ]
    },
    {
      'texto': "Qual seu game favorito??",
      'respostas': [
        {'texto': 'The Witcher 3', 'nota': 10},
        {'texto': 'Call of Duty', 'nota': 6},
        {'texto': 'Zelda', 'nota': 10},
        {'texto': 'Fortnite', 'nota': 1},
      ]
    },
    {
      'texto': "Qual seu animal favorito??",
      'respostas': [
        {'texto': 'Cachorro', 'nota': 7},
        {'texto': 'Gato', 'nota': 5},
        {'texto': 'Passaro', 'nota': 2},
        {'texto': 'Rato', 'nota': 4},
      ]
    },
    {
      'texto': "Qual sua comida favorita?",
      'respostas': [
        {'texto': 'Lasanha', 'nota': 2},
        {'texto': 'Pizza', 'nota': 9},
        {'texto': 'Hamburguer', 'nota': 5},
        {'texto': 'Sushi', 'nota': 6},
      ]
    },
  ];

  void _responder(int notaUsuario) {
    setState(() {
      if (isPerguntaSelecionada) {
        _perguntaSelecionada++;
        _notaTotal += notaUsuario;
      }
    });
    print(_perguntaSelecionada + _notaTotal);
  }

  bool get isPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: isPerguntaSelecionada
            ? Questionario(
                perguntas: _perguntas,
                perguntaSelecionada: _perguntaSelecionada,
                responder: _responder,
              )
            : Resultado(),
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
