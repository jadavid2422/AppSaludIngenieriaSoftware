import 'package:flutter/material.dart';

class IndicadorSalud extends StatelessWidget {
  const IndicadorSalud({Key? key}) : super(key: key);
  static const String routerName = 'IndicadorSalud'; 


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Indicador de Salud'),
          backgroundColor: const Color.fromARGB(255, 173, 193, 250),
      ),
    );    
  }
}