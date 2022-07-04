import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

void main() {
  runApp(PerguntaApp());
}

class PerguntaAppState extends State<PerguntaApp> {
  int perguntaSelecionada = 0;

  void responder() {
    setState(() {
      perguntaSelecionada++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Variáveis
    final perguntas = [
      'Qual é a sua cor favorita?',
      'Qual é o seu animal favorito?'
    ];

    return MaterialApp(
      title: 'Pergunta APP',
      theme: ThemeData(primarySwatch: Colors.green),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Pergunta App'),
        ),
        body: Column(
          children: [
            Questao(texto: perguntas[perguntaSelecionada]),
            const Botao(texto: 'Resposta 1'),
            const Botao(texto: 'Resposta 2'),
            const Botao(texto: 'Resposta 3'),
          ],
        ),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  PerguntaApp({Key? key}) : super(key: key);

  @override
  PerguntaAppState createState() {
    return PerguntaAppState();
  }
}
