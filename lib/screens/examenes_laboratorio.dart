import 'package:flutter/material.dart';

class ExamenesLaboratorio extends StatelessWidget {
  const ExamenesLaboratorio({Key? key}) : super(key: key);
  static const String routerName = 'ExamenesLaboratorio'; 


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Examenes de Laboratorio'),
          backgroundColor: const Color.fromARGB(255, 173, 193, 250),
      ),
    );    
  }
}