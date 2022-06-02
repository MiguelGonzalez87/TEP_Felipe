

//import 'dart:js';

import 'package:flutter/material.dart';
import 'package:mynetflix_app/componentes/cartel_principal.dart';
import 'package:mynetflix_app/componentes/item_img.dart';
import 'package:mynetflix_app/componentes/item_img2.dart';
import 'package:mynetflix_app/componentes/item_img3.dart';
import 'package:mynetflix_app/componentes/item_img4.dart';

class InicioScreen extends StatelessWidget {
  //const InicioScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          CartelPrincipal(),
          this.listaHorizontal('Películas de Acción', ItemImg(), 6),
          SizedBox(height: 10.0,),
          this.listaHorizontal('Películas de Ciencia Ficción', ItemImg2(), 6),
          SizedBox(height: 10.0,),
          this.listaHorizontal('Películas infantiles', ItemImg3(), 6),
          SizedBox(height: 10.0,),
          this.listaHorizontal('Series', ItemImg4(), 6),

        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white38,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Inicio"),
          BottomNavigationBarItem(icon: Icon(Icons.search_outlined), label: "Buscar"),
          BottomNavigationBarItem(icon: Icon(Icons.library_music), label: "Proximamente"),
          BottomNavigationBarItem(icon: Icon(Icons.arrow_downward), label: "Descargas"),
          BottomNavigationBarItem(icon: Icon(Icons.more_horiz), label: "Más")
        ]
        ),
      );
}


  Widget listaHorizontal(String titulo, Widget item, int cantidad){

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 6.0, vertical: 10.0),
          child: Text(
            titulo,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20.0
              ),
            ),
        ),
          Container(
            height: 110.0,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: cantidad,
              itemBuilder: (context, index){
                return item;
              }
              ),
          )
      ],
    );
  }
}