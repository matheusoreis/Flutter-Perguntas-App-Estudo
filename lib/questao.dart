import 'package:flutter/material.dart';

class Questao extends StatelessWidget {
  const Questao({Key? key, this.texto}) : super(key: key);

  final String? texto;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(top: 25.0, bottom: 15.0),
      child: Text(
        texto!,
        style: const TextStyle(
          fontSize: 22,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
