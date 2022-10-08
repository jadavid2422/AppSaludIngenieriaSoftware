import 'package:flutter/material.dart';

class CondicionesEnfermedades extends StatelessWidget {
  const CondicionesEnfermedades({Key? key}) : super(key: key);
  static const String routerName = 'CondicionesEnfermedades'; 


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Condiciones Enfermedades'),
          backgroundColor: const Color.fromARGB(255, 173, 193, 250),
      ),
    );    
  }
}