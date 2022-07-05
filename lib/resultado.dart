import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  const Resultado(
      {Key? key,
      required this.textoSucesso,
      required this.pontos,
      required this.quandoReiniciarQuestoes})
      : super(key: key);

  final String textoSucesso;
  final int pontos;
  final Function() quandoReiniciarQuestoes;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
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
            Container(
              width: double.infinity,
              margin: const EdgeInsets.only(top: 30),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size.fromHeight(80),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                  ),
                  onPressed: quandoReiniciarQuestoes,
                  child: const Text('Reiniciar Questionário')),
            )
          ],
        ),
      ),
    );
  }
}
