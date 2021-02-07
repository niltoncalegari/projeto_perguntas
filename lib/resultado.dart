import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;

  Resultado(this.pontuacao);

  String get fraseResultado{
    if (pontuacao < 8) {
      return 'Parabens';
    } else if (pontuacao < 12){
      return 'Voce e D+';
    } else if (pontuacao < 16){
      return 'Eita porra';
    } else {
      return 'Jedi';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
      fraseResultado,
      style: TextStyle(
        fontSize: 28,
      ),
    ));
  }
}
