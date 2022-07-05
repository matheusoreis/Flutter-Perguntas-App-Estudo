import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';
import './resultado.dart';

void main() {
  runApp(const PerguntaApp());
}

class PerguntaAppState extends State<PerguntaApp> {
  int _perguntaSelecionada = 0;
  String textoSucesso = 'Finalizado';

  final List<Map<String, Object>> _perguntas = const [
    {
      'texto': 'Qual é sua cor favorita?',
      'respostas': ['Preto', 'Vermelho', 'Verde', 'Branco'],
    },
    {
      'texto': 'Qual é seu animal favorito?',
      'respostas': ['Leão', 'Cachorro', 'Coelho', 'Cobra'],
    },
    {
      'texto': 'Qual a sua linguagem de programação predileta?',
      'respostas': ['C#', 'Dart', 'JavaScript', 'Rust'],
    },
  ];

  void responder() {
    if (temPerguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;
      });
    }
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<String> respostas = temPerguntaSelecionada
        ? _perguntas[_perguntaSelecionada].cast()['respostas']
        : [];
    List<Widget> widgets = respostas
        .map(
          (t) => Botao(texto: t, quandoSelecionado: responder),
        )
        .toList();

    return MaterialApp(
      title: 'Pergunta APP',
      theme: ThemeData(primarySwatch: Colors.green),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Pergunta App',
            style: TextStyle(
              fontWeight: FontWeight.w700,
            ),
          ),
          centerTitle: true,
        ),
        body: temPerguntaSelecionada
            ? Column(
                children: [
                  Questao(
                      texto:
                          _perguntas[_perguntaSelecionada]['texto'].toString()),
                  ...widgets,
                ],
              )
            : Resultado(textoSucesso: textoSucesso),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  const PerguntaApp({Key? key}) : super(key: key);

  @override
  PerguntaAppState createState() {
    return PerguntaAppState();
  }
}
