import 'package:calculadora_flutter/models/funcoes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../components/display.dart';
import '../components/keyboard.dart';

class Calculadora extends StatefulWidget {
  @override
  State<Calculadora> createState() => _CalculadoraState();
}

class _CalculadoraState extends State<Calculadora> {
  final Funcoes funcoes = Funcoes();

  _pressionado(String comando) {
    setState(() {
      funcoes.aplicarComando(comando);
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

    return MaterialApp(
      home: Column(
        children: <Widget>[
          Display(funcoes.valor),
          Keyboard(_pressionado),
        ],
      ),
    );
  }
}
