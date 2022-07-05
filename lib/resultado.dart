import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  const Resultado({Key? key, required this.textoSucesso, required this.pontos})
      : super(key: key);

  final String textoSucesso;
  final int pontos;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            textoSucesso,
            style: const TextStyle(
              fontSize: 22,
            ),
            textAlign: TextAlign.center,
          ),
          const Padding(padding: EdgeInsets.only(top: 10, bottom: 10)),
          Text(
            pontos.toString(),
            style: const TextStyle(
              fontSize: 22,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
