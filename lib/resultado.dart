import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  final void Function() reiniciarQuestionario;

  Resultado(this.pontuacao, this.reiniciarQuestionario);

  String get fraseResultado {
    if (pontuacao < 12) {
      return 'Parabens';
    } else if (pontuacao < 16) {
      return 'Voce e D+';
    } else if (pontuacao < 22) {
      return 'Eita porra';
    } else {
      return 'Jedi';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
            child: Text(
          fraseResultado,
          style: TextStyle(
            fontSize: 28,
          ),
        )),
        FlatButton(
          onPressed: reiniciarQuestionario,
          child: Text(
            'Reiniciar',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          textColor: Colors.blue,
        )
      ],
    );
  }
}
