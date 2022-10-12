import 'package:flutter/material.dart';

import '../widgets/colors.dart';

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
      body: Table(
      children: [
        TableRow(children: [
          InkWell(
            onTap: () {
  
            },
            child: const _SingleCard(
                color: Colors.black,
                image: AssetImage('assets/papa.png'),
                text: 'Luis Matinez',
                textTwo: "Padre",
                tamLetra:30),
                
          ),
        ]),
         TableRow(children: [
          InkWell(
            onTap: () {

            },
            child: const _SingleCard(
                color: Colors.black,
                image: AssetImage('assets/mama.png'),
                text: 'Martha Rodriguez',
                textTwo: "Madre",
                tamLetra:30),
                
          ),
        ]),
         TableRow(children: [
          InkWell(
            onTap: () {
 
            },
            child: const _SingleCard(
                color: Colors.black,
                image: AssetImage('assets/hija.png'),
                text: 'Sofia Martinez',
                textTwo: "Hija",
                tamLetra:30),
          ),
        ]),
         TableRow(children: [
          InkWell(
            onTap: () {

            },
            child: const _SingleCard(
                color: Colors.black,
                image: AssetImage('assets/esposa.png'),
                text: 'Julieta Sanchez',
                textTwo: "Esposa",
                tamLetra:25),
          ),
        ]),       
      ],
    ));
  }
}

class _SingleCard extends StatelessWidget {
  final AssetImage image;
  final Color color;
  final String text;
  final double tamLetra;
  final String textTwo;

  const _SingleCard(
      {required this.image, required this.color, required this.text,required this.tamLetra, required this.textTwo});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(15, 20, 15, 0),
      height: 120,
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
              backgroundImage: image,
              radius: 35,
              ),
            ),

            Padding(
              padding:const EdgeInsets.fromLTRB(20, 15, 0, 0),
              child:Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [              
               Stack(
                    children: <Widget>[
                      // Stroked text as border.
                      Text(
                        text,
                        style: TextStyle(
                          fontSize: 30,
                          foreground: Paint()
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = 2
                            ..color = Colors.black,
                        ),
                      ),
                      // Solid text as fill.
                      Text(
                        text,
                        style: const TextStyle(
                          fontSize: 30,
                          color: Color.fromRGBO(91, 127, 255, 1),
                        ),
                      ),
                    ],
                  ),
              Text(textTwo, style: TextStyle(color: color, fontSize: 25)),
            ],),
            )
        ],)
      );
  }
}

