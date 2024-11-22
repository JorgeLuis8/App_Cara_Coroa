import 'package:cara_ou_coroa/tela_resultado.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class TelaInicial extends StatefulWidget {
  const TelaInicial({super.key});

  @override
  State<TelaInicial> createState() => _TelaInicialState();
}

class _TelaInicialState extends State<TelaInicial> {
  String moeda = "";

  void sorteio() {
    int resultado = Random().nextInt(2) + 1;

    if (resultado == 1) {
      moeda = "images/moeda_cara.png";
    } else {
      moeda = "images/moeda_coroa.png";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      height: double.infinity,
      color: const Color(0xFF69C499),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Image(image: AssetImage("images/logo.png")),
          const SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {
              sorteio();
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => TelaResultado(
                            moeda: moeda,
                          )));
            },
            child: const Image(image: AssetImage("images/botao_jogar.png")),
          )
        ],
      ),
    ));
  }
}
