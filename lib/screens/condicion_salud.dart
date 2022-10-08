import 'package:flutter/material.dart';

class CondicionSalud extends StatelessWidget {
  const CondicionSalud({Key? key}) : super(key: key);
  static const String routerName = 'CondicionSalud'; 


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Condicion de Salud'),
          backgroundColor: const Color.fromARGB(255, 173, 193, 250),
      ),
    );    
  }
}