import 'package:flutter/material.dart';
main () {
   runApp(PerguntaApp());
}
class PerguntaAppState extends State<PerguntaApp>{
  var perguntaSelecionada = 0;

  void responder(){
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
            Text(perguntas[perguntaSelecionada]),
            RaisedButton(
              child: Text('Resposta 1'),
              onPressed: responder,
            ),
            RaisedButton(
              child: Text('Resposta 2'),
              onPressed: responder,
            ),
            RaisedButton(
              child: Text('Resposta 3'),
              onPressed: responder,
            ),
          ],
        ),
      ),
    );
  }
}
class PerguntaApp extends StatefulWidget {
  @override
  PerguntaAppState createState() {
    return PerguntaAppState();
  }
}