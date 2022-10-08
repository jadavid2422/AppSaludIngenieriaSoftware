import 'package:flutter/material.dart';

class Consultas extends StatelessWidget {
  const Consultas({Key? key}) : super(key: key);
  static const String routerName = 'Consultas'; 


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Consultas'),
          backgroundColor: const Color.fromARGB(255, 173, 193, 250),
      ),
    );    
  }
}