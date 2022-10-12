import 'package:flutter/material.dart';

import '../widgets/colors.dart';

class IndicadorSalud extends StatelessWidget {
  const IndicadorSalud({Key? key}) : super(key: key);
  static const String routerName = 'CondicionSalud';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Indicador Salud'),
          backgroundColor: const Color.fromARGB(255, 173, 193, 250),
        ),
        body: Table(
      children: [
         TableRow(children: [
          InkWell(
            onTap: () {
           
            },
            child: const _SingleCard(
                color: Colors.white,
                icon: 'assets/frecuenciaCardiaca.png',
                text: 'Agregar Productos'),
          ),
          InkWell(
            onTap: () {

            },
            child: const _SingleCard(
                color: Colors.white,
                icon: 'assets/tensionArterial.png',
                text: 'Catalogo de Productos'),
          ),
        ]),
        TableRow(children: [
          InkWell(
            onTap: () {
           
            },
            child: const _SingleCard(
                color: Colors.white,
                icon:  'assets/saturacionOxigeno.png',
                text: 'Agregar Productos'),
          ),
          InkWell(
            onTap: () {

            },
            child: const _SingleCard(
                color: Colors.white,
                icon: 'assets/vacunas.png',
                text: 'Catalogo de Productos'),
          ),
        ]),   
      ],
    ));
  }
}


class _SingleCard extends StatelessWidget {
  final String icon;
  final Color color;
  final String text;

  const _SingleCard(
      {required this.icon, required this.color, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      height: 283,
      decoration: BoxDecoration(
         border: Border.all(width: 7.0, color: MyColors.blueApp),
          color: Colors.white,
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: color,
            // ignore: sort_child_properties_last        
            child: Image.asset(icon,width: 300),
            radius: 100,
          ),
          Text(text, style: const TextStyle(color: Colors.black, fontSize: 18))
        ],
      ),
    );
  }
}
