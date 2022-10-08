import 'package:flutter/material.dart';

class GenerarReportes extends StatelessWidget {
  const GenerarReportes({Key? key}) : super(key: key);
  static const String routerName = 'GenerarReportes'; 


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Generar Reportes'),
          backgroundColor: const Color.fromARGB(255, 173, 193, 250),
      ),
    );    
  }
}