import 'package:flutter/material.dart';

class Botao extends StatelessWidget {
  const Botao({Key? key, this.texto}) : super(key: key);

  final String? texto;

  @override
  Widget build(BuildContext context) {
    //return Text(texto!);
    return ElevatedButton(onPressed: null, child: Text(texto!));
  }
}
