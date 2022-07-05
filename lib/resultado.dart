import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  const Resultado({Key? key, required this.textoSucesso}) : super(key: key);

  final String textoSucesso;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Center(
        child: Text(
          textoSucesso,
          style: const TextStyle(
            fontSize: 22,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
