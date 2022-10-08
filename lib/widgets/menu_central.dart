import 'package:app_salud/screens/condicion_salud.dart';
import 'package:app_salud/screens/condiciones_enfermedades.dart';
import 'package:app_salud/screens/consultas.dart';
import 'package:app_salud/screens/control_profesional.dart';
import 'package:app_salud/screens/examenes_laboratorio.dart';
import 'package:app_salud/screens/generar_reportes.dart';
import 'package:app_salud/screens/gestion_dependientes.dart';
import 'package:app_salud/screens/indicador_salud.dart';
import 'package:app_salud/widgets/colors.dart';
import 'package:flutter/material.dart';

class MenuCentral extends StatelessWidget {
  const MenuCentral({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        TableRow(children: [
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const GestionDependientes()));
            },
            child: const _SingleCard(
                color: Colors.black,
                image: AssetImage('assets/gestion.png'),
                text: 'GESTIÓN DEPENDIENTES',
                tamLetra:30),
                
          ),
        ]),
         TableRow(children: [
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const CondicionSalud()));
            },
            child: const _SingleCard(
                color: Colors.black,
                image: AssetImage('assets/salud.png'),
                text: 'CONDICIÓN DE SALUD',
                tamLetra:30),
                
          ),
        ]),
         TableRow(children: [
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const IndicadorSalud()));
            },
            child: const _SingleCard(
                color: Colors.black,
                image: AssetImage('assets/salud2.png'),
                text: 'INDICADOR DE SALUD',
                tamLetra:30),
          ),
        ]),
         TableRow(children: [
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const ControlProfesional()));
            },
            child: const _SingleCard(
                color: Colors.black,
                image: AssetImage('assets/profesionales.png'),
                text: 'CONTROL CON PROFESIONAL',
                tamLetra:25),
          ),
        ]),
         TableRow(children: [
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const ExamenesLaboratorio()));
            },
            child: const _SingleCard(
                color: Colors.black,
                image: AssetImage('assets/laboratorio.png'),
                text: 'EXAMENES DE LABORATORIO',
                tamLetra:25),
          ),
        ]),
         TableRow(children: [
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const CondicionesEnfermedades()));
            },
            child: const _SingleCard(
                color: Colors.black,
                image: AssetImage('assets/enfermedad.png'),
                text: 'CONDICIONES ENFERMEDADES',
                tamLetra:25),
          ),
        ]),
         TableRow(children: [
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Consultas()));
            },
            child: const _SingleCard(
                color: Colors.black,
                image: AssetImage('assets/busqueda.png'),
                text: 'CONSULTAS',
                tamLetra:30),
          ),
        ]),
         TableRow(children: [
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const GenerarReportes()));
            },
            child: const _SingleCard(
                color: Colors.black,
                image: AssetImage('assets/reportes.png'),
                text: 'GENERAR REPORTES',
                tamLetra:25),
          ),
        ]),
       
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  final AssetImage image;
  final Color color;
  final String text;
  final double tamLetra;

  const _SingleCard(
      {required this.image, required this.color, required this.text,required this.tamLetra});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(15, 20, 15, 0),
      height: 80,
      decoration: BoxDecoration(
        border: Border.all(width: 7.0, color: MyColors.blueApp),       
        color: Colors.white,
        borderRadius: BorderRadius.circular(20)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [ 
            Padding(
              padding:const EdgeInsets.fromLTRB(20, 0, 0, 0),
              child:  CircleAvatar(
              backgroundColor: Colors.white,
              backgroundImage: image),
            ),

            Padding(
              padding:const EdgeInsets.fromLTRB(20, 0, 0, 0),
              child: Text(text, style: TextStyle(color: color, fontSize: tamLetra)),
            )
        ],)
      );
  }
}
