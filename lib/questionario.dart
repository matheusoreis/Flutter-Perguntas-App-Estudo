import 'package:flutter/material.dart';
import './resposta.dart';
import './questao.dart';

class Questionario extends StatelessWidget {
  const Questionario({
    Key? key,
    required this.perguntaSelecionada,
    required this.perguntas,
    required this.quandoResponder,
  }) : super(key: key);

  final int perguntaSelecionada;
  final List<Map<String, Object>> perguntas;
  final void Function(int) quandoResponder;

  bool get temPerguntaSelecionada {
    return perguntaSelecionada < perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> respostas = temPerguntaSelecionada
        ? perguntas[perguntaSelecionada].cast()['respostas']
        : [];

    List<Widget> widgets = respostas
        .map(
          (resp) => Botao(
            texto: resp['texto'].toString(),
            quandoSelecionado: () =>
                quandoResponder(int.parse(resp['pontuacao'].toString())),
          ),
        )
        .toList();

    return Column(
      children: [
        Questao(texto: perguntas[perguntaSelecionada]['texto'].toString()),
        ...widgets,
      ],
    );
  }
}
