import 'package:flutter/material.dart';
import 'package:playground/questionario.dart';
import './resultado.dart';
import './questionario.dart';

void main() {
  runApp(const PerguntaApp());
}

class PerguntaAppState extends State<PerguntaApp> {
  int _perguntaSelecionada = 0;
  var _pontuacaoTotal = 0;
  String textoSucesso = 'Sua pontuação é de:';

  final List<Map<String, Object>> _perguntas = const [
    {
      'texto': 'De quem é a famosa frase "Penso, logo existo?',
      'respostas': [
        {'texto': 'Platão', 'pontuacao': 0},
        {'texto': 'Galileu Galilei', 'pontuacao': 0},
        {'texto': 'Descartes', 'pontuacao': 1},
        {'texto': 'Sócrates', 'pontuacao': 0},
        {'texto': 'Francis Bacon', 'pontuacao': 0},
      ],
    },
    {
      'texto': 'De onde é a invenção do chuveiro elétrico?',
      'respostas': [
        {'texto': 'França', 'pontuacao': 0},
        {'texto': 'Inglaterra', 'pontuacao': 0},
        {'texto': 'Brasil', 'pontuacao': 1},
        {'texto': 'Austrália', 'pontuacao': 0},
        {'texto': 'Itália', 'pontuacao': 0},
      ],
    },
    {
      'texto': 'Quantas casas decimais tem o número pi?',
      'respostas': [
        {'texto': 'Duas', 'pontuacao': 0},
        {'texto': 'Centenas', 'pontuacao': 0},
        {'texto': 'Infinitas', 'pontuacao': 1},
        {'texto': 'Vinte', 'pontuacao': 0},
        {'texto': 'Milhares', 'pontuacao': 0},
      ],
    },
    {
      'texto':
          'Atualmente, quantos elementos químicos a tabela periódica possui?',
      'respostas': [
        {'texto': '113', 'pontuacao': 0},
        {'texto': '109', 'pontuacao': 0},
        {'texto': '108', 'pontuacao': 0},
        {'texto': '118', 'pontuacao': 1},
        {'texto': '92', 'pontuacao': 0},
      ],
    },
    {
      'texto':
          'As pessoas de qual tipo sanguíneo são consideradas doadores universais?',
      'respostas': [
        {'texto': 'A', 'pontuacao': 0},
        {'texto': 'B', 'pontuacao': 0},
        {'texto': 'O', 'pontuacao': 1},
        {'texto': 'AB', 'pontuacao': 0},
        {'texto': 'ABO', 'pontuacao': 0},
      ],
    },
  ];

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  void _reiniciarFormulrio() {
    setState(() {
      _perguntaSelecionada = 0;
      _pontuacaoTotal = 0;
    });
  }

  void responder(int pontuacao) {
    if (temPerguntaSelecionada) {
      setState(
        () {
          _perguntaSelecionada++;
          _pontuacaoTotal += pontuacao;
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
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
            ? Questionario(
                perguntas: _perguntas,
                perguntaSelecionada: _perguntaSelecionada,
                quandoResponder: responder)
            : Resultado(
                textoSucesso: textoSucesso,
                pontos: _pontuacaoTotal,
                quandoReiniciarQuestoes: _reiniciarFormulrio,
              ),
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
