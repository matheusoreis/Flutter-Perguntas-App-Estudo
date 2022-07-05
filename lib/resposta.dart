import 'package:flutter/material.dart';

class Botao extends StatelessWidget {
  const Botao({Key? key, this.texto, required this.quandoSelecionado})
      : super(key: key);

  final String? texto;
  final void Function() quandoSelecionado;

  @override
  Widget build(BuildContext context) {
    //
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          fixedSize: const Size.fromHeight(80),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        ),
        onPressed: quandoSelecionado,
        child: Text(
          texto!,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
