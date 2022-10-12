import 'package:app_salud/widgets/colors.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class Registro extends StatefulWidget {
  const Registro({Key? key}) : super(key: key);

 @override
 // ignore: library_private_types_in_public_api
 _ReistroState createState() => _ReistroState();
}

class _ReistroState extends State<Registro> {
  GlobalKey<FormState> keyForm =  GlobalKey();
  TextEditingController  nameCtrl =  TextEditingController();
  TextEditingController  edadCtrl =  TextEditingController();
  TextEditingController  emailCtrl =  TextEditingController();
  TextEditingController  mobileCtrl =  TextEditingController();
  TextEditingController  passwordCtrl =  TextEditingController();
  TextEditingController  repeatPassCtrl =  TextEditingController();

 @override
 Widget build(BuildContext context) {
   return MaterialApp(
    debugShowCheckedModeBanner: false,
    home:  Scaffold(
      appBar:  AppBar(
      title:  const Text('Registrarse'),
      backgroundColor: const Color.fromARGB(255, 173, 193, 250),
      leading: IconButton(
      onPressed: (){
        Navigator.pop(context);
      },
      icon:const Icon(Icons.arrow_back_ios))      
       ),
       body:  SingleChildScrollView(
         child:  Container(
           margin:  const EdgeInsets.all(20),
           child:  Form(
             key: keyForm,
             child: formUI(),
           ),
         ),
       ),
     ),
   );
 }

 formItemsDesign(icon, item) {
   return Padding(
     padding: const EdgeInsets.symmetric(vertical: 7),
     child: Card(child: ListTile(leading: Icon(icon), title: item)),
   );
 }

 String gender = 'hombre';

 Widget formUI() {
   return  Column(
     children: <Widget>[
      Stack(
        children: <Widget>[
          SizedBox(
            height: 350,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),            
              child: Image.asset("assets/familia.png"),
              ),),
        ],),

        const SizedBox(height: 40),

       formItemsDesign(
           Icons.person,
           TextFormField(
             controller: nameCtrl,
             decoration: const InputDecoration(
               labelText: 'Nombre Completo',
             ),
           )),

       formItemsDesign(
           Icons.phone,
           TextFormField(
             controller: mobileCtrl,
               decoration:  const InputDecoration(
                 labelText: 'Numero de telefono',
               ),
               keyboardType: TextInputType.phone,
               maxLength: 10,
               )),

       formItemsDesign(
           Icons.phone,
           TextFormField(
             controller: edadCtrl,
               decoration:  const InputDecoration(
                 labelText: 'Edad',
               ),
               keyboardType: TextInputType.number,
               maxLength: 2,
               )),

       formItemsDesign(
           null,
           Column(children: [
            // ignore: prefer_const_literals_to_create_immutables
            Row(children: [
              const Text("Seleccione el Genero", textAlign: TextAlign.start)],),           
           Row(children: [
            Expanded(
              child: RadioListTile<String>(
               title: const Text('Hombre'),
               value: 'hombre',
               groupValue: gender,
               onChanged: (value) {
                 setState(() {
                   gender = value!;
                 });
               },
             ),),
            Expanded(
              child: RadioListTile<String>(
               title: const Text('Mujer'),
               value: 'mujer',
               groupValue: gender,
               onChanged: (value) {
                 setState(() {
                   gender = value!;
                 });
               },
             ),)            
           ],)
          ])),

       formItemsDesign(
           Icons.email,
           TextFormField(
             controller: emailCtrl,
               decoration:  const InputDecoration(
                 labelText: 'Email',
               ),
               keyboardType: TextInputType.emailAddress,
               maxLength: 32,
               )),

       formItemsDesign(
           Icons.remove_red_eye,
           TextFormField(
             controller: passwordCtrl,
             obscureText: true,
             decoration: const InputDecoration(
               labelText: 'Contraseña',
             ),
           )),

       formItemsDesign(
           Icons.remove_red_eye,
           TextFormField(
             controller: repeatPassCtrl,
             obscureText: true,
             decoration: const InputDecoration(
               labelText: 'Repetir la Contraseña',
             ),
           )),
           
   GestureDetector(
   onTap: (){
     save(nombre: nameCtrl.text, telefono: mobileCtrl.text, edad: edadCtrl.text, genero: "Hombre", correo: emailCtrl.text, clave: passwordCtrl.text);
   },child: Container(
         margin:  const EdgeInsets.fromLTRB(0, 20, 0, 20),        
         decoration: ShapeDecoration(
           shape: RoundedRectangleBorder(
            side: const BorderSide(color: Colors.black),
            borderRadius: BorderRadius.circular(30.0)),
            gradient: const LinearGradient(colors: [  
             Color.fromARGB(255, 151, 184, 246),
             Color.fromARGB(255, 151, 184, 246),    
           ],
               begin: Alignment.topLeft, end: Alignment.bottomRight),
         ),
         padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 15),
         child: const Text("GUARDAR",
             style: TextStyle(
                 color: Colors.black,
                 fontSize: 18,
                 fontWeight: FontWeight.w500)),
       ))
     ],
   );
 }
 
 CollectionReference users = FirebaseFirestore.instance.collection('datosUsuario');

  Future<void> save({required String nombre, required String telefono, required String edad, required String genero, required String correo, required String clave}) {
  return users
    .doc(correo)
    .set({
      'Nombre': nombre,
      'Telefono': telefono,
      'Edad': edad,
      'Genero': genero,
      'Correo': correo,
      'Clave': clave,
      },
      SetOptions(merge: true),
    );
   }
 }


