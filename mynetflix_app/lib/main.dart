// Miguel González Martínez
// FES Áragon
// TEmas Especiales de Programación 2022

import 'package:flutter/material.dart';

import 'package:mynetflix_app/screens/inicio_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: InicioScreen(),
    );
}
}
