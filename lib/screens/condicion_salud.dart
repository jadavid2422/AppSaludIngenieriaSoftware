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
        body: Center(
            child: Column(
          children: [
            SizedBox(
              width: 300.0,
              height: 300.0,
              child: Image.asset('assets/asma.png'),
            ),
            SizedBox(
              width: 300.0,
              height: 300.0,
              child: Image.asset('assets/diabetes.png'),
            ),
            SizedBox(
              width: 300.0,
              height: 300.0,
              child: Image.asset('assets/hipertension.png'),
            )
          ],
        )));
  }
}