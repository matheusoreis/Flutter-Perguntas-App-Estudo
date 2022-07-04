import 'package:flutter/material.dart';

class Botao extends StatelessWidget {
  const Botao({Key? key, this.texto}) : super(key: key);

  final String? texto;

  @override
  Widget build(BuildContext context) {
    //return Text(texto!);

    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            fixedSize: const Size.fromHeight(50),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20))),
          ),
          onPressed: () {},
          child: Text(
            texto!,
            style: const TextStyle(color: Colors.white),
          )),
    );
  }
}
