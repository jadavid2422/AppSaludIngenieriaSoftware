import 'package:flutter/material.dart';

class GestionDependientes extends StatelessWidget {
  const GestionDependientes({Key? key}) : super(key: key);
  static const String routerName = 'GestionDependientes'; 


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Gestion Dependientes'),
          backgroundColor: const Color.fromARGB(255, 173, 193, 250),
      ),
    );    
  }
}