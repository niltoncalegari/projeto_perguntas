import 'package:flutter/material.dart';
import './questao.dart';
main () {
   runApp(PerguntaApp());
}
class _PerguntaAppState extends State<PerguntaApp>{
  var perguntaSelecionada = 0;

  void _responder(){
    setState(() {
      perguntaSelecionada++;
    });
    print('Pergunta respondida, proxima pergunta ${perguntaSelecionada}');
  }

  @override
  Widget build(BuildContext context) {
    final perguntas = ['Qual sua cor favorita?',
                       'Qual seu game favorito?',
                       'Qual seu estilo de musica favorito?',
                       'Qual sua comida favorita?'];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),          
        ),
        body: Column(
          children: [
            Questao(perguntas[perguntaSelecionada]),
            RaisedButton(
              child: Text('Resposta 1'),
              onPressed: _responder,
            ),
            RaisedButton(
              child: Text('Resposta 2'),
              onPressed: _responder,
            ),
            RaisedButton(
              child: Text('Resposta 3'),
              onPressed: _responder,
            ),
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