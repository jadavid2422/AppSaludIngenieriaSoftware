import 'package:app_salud/widgets/menu_barra-lateral.dart';
import 'package:flutter/material.dart';

import '../widgets/menu_central.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('App Salud'),
          backgroundColor: const Color.fromARGB(255, 173, 193, 250),
      ),
      drawer: const MenuBarraLateral(),
      body: Stack(
        children: const[
          MenuCentral()
        ],
      ),
    );
  }

}