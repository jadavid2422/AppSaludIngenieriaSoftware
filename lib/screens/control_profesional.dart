import 'package:flutter/material.dart';

class ControlProfesional extends StatelessWidget {
  const ControlProfesional({Key? key}) : super(key: key);
  static const String routerName = 'ControlProfesional'; 


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Control con Profesional'),
          backgroundColor: const Color.fromARGB(255, 173, 193, 250),
      ),
    );    
  }
}