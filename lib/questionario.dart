import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

class Questionario extends StatelessWidget {
  final List<Map<String, Object>> perguntas;
  final int perguntaSelecionada;
  final void Function(int) responder;

  Questionario({
    @required this.perguntaSelecionada,
    @required this.perguntas,
    @required this.responder,
  });

  bool get isPerguntaSelecionada {
    return perguntaSelecionada < perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> respostas = isPerguntaSelecionada
        ? perguntas[perguntaSelecionada]['respostas']
        : null;

    return Column(
      children: [
        Questao(perguntas[perguntaSelecionada]['texto']),
        ...respostas.map((resp) => Resposta(resp['texto'], () => responder(resp['nota']))).toList(),
      ],
    );
  }
}
