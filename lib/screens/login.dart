// ignore_for_file: deprecated_member_use

import 'package:app_salud/screens/home_screen.dart';
import 'package:app_salud/screens/registro.dart';
import 'package:app_salud/widgets/colors.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  SignInState createState() => SignInState();
}
class SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
        //For moving according to the screen when the keyboard popsup.
          alignment: Alignment.bottomCenter,
          child: Container(
              padding: const EdgeInsets.all(30),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Stack(
                    children: <Widget>[
                      SizedBox(     
                        height: 400,                
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image.asset("assets/familia.png"),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Stack(
                    children: <Widget>[
                      // Stroked text as border.
                      Text(
                        'App Salud',
                        style: TextStyle(
                          fontSize: 40,
                          foreground: Paint()
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = 3
                            ..color = Colors.black,
                        ),
                      ),
                      // Solid text as fill.
                      const Text(
                        'App Salud',
                        style: TextStyle(
                          fontSize: 40,
                          color: Color.fromRGBO(91, 127, 255, 1),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xffe1e2e3),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 70,
                            offset: const Offset(0, 3),
                          ),
                        ]),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 5),
                              child: const Text(
                                "Login",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w800),
                              )),
                          const SizedBox(height: 10),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 2, vertical: 5),
                            decoration: const BoxDecoration(
                                color: Color(0xfff5f8fd),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            child: TextFormField(
                              style: const TextStyle(fontSize: 20),
                              decoration: const InputDecoration(
                                hintText: "Usuario o Email",
                                border: InputBorder.none,
                                prefixIcon: Icon(
                                  Icons.account_circle,
                                  color: Colors.black,
                                  size: 40,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 15),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 2, vertical: 5),
                            decoration: const BoxDecoration(
                                color: Color(0xfff5f8fd),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            child: TextFormField(
                              style: const TextStyle(fontSize: 20),
                              obscureText: true,
                              decoration: const InputDecoration(
                                hintText: "Contraseña",
                                border: InputBorder.none,
                                prefixIcon:
                                    Icon(Icons.vpn_key, color: Colors.black,size: 40),
                              ),
                            ),
                          ),
                        ]),
                  ),
                  const SizedBox(height: 50),

                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [                      
                      RaisedButton(
                          elevation: 3,
                          padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 80),
                          onPressed: () {
                             Navigator.push(context,
                             MaterialPageRoute(builder: (context) => const HomeScreen()));                            
                          },
                          color: MyColors.blueApp,
                          shape: const RoundedRectangleBorder(
                            side: BorderSide(color: Colors.black),
                            borderRadius:BorderRadius.all( Radius.circular(30)),),                    
                          child: const Text("INGRESAR", 
                          style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.w700),)),                          
                      const SizedBox(height: 30),  
                      RaisedButton(                        
                          elevation: 3,
                          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 50),
                          onPressed: () {                           
                             //Navigator.push(context,
                             //MaterialPageRoute(builder: (context) =>  Registro()));                                                          
                          },
                          color: Colors.white,
                          shape: const RoundedRectangleBorder(
                            side: BorderSide(color: Colors.grey),
                            borderRadius:BorderRadius.all( Radius.circular(30)),),                    
                          child: const Text("Recuperar Contraseña", 
                          style: TextStyle(fontSize: 16, color: Colors.grey, fontWeight: FontWeight.w700),)),                          
                      const SizedBox(height: 60), 
                      Row(children: <Widget>[
                        Expanded(
                          child: Container(
                              margin: const EdgeInsets.only(left: 10.0, right: 20.0),
                              child: const Divider(
                                color: Colors.black,
                              )),
                        ),
                        const Text("O",style: TextStyle(fontSize: 20)),
                        Expanded(
                          child: Container(
                              margin: const EdgeInsets.only(left: 20.0, right: 10.0),
                              child: const Divider(
                                color: Colors.black,
                              )),
                        ),
                      ]),
                      const SizedBox(height: 20),

                      RaisedButton(
                          elevation: 3,
                          padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 60),
                          onPressed: () {
                             Navigator.push(context,
                             MaterialPageRoute(builder: (context) =>  Registro()));                            
                          },
                          color: MyColors.blueApp,
                          shape: const RoundedRectangleBorder(
                            side: BorderSide(color: Colors.black),
                            borderRadius:BorderRadius.all( Radius.circular(30)),),                    
                          child: const Text("CREAR CUENTA", 
                          style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.w700),)),                          
                          const SizedBox(height: 30),  
                    ],
                  ),                                  
                ],
              )),
        ),
      ),
    );
  }
}
