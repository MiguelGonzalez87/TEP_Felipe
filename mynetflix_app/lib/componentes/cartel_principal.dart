import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mynetflix_app/componentes/nav_bar_superior.dart';

class CartelPrincipal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        this.cabecera(),
        this.infoserie(),
        this.botonera(),
      ],
    );
  }

  Widget cabecera(){
    return Stack(
          children: [
            Image.network(
              'https://images-na.ssl-images-amazon.com/images/S/pv-target-images/a21d6b13c2083f917b0b95d52bd4552eaf4c79ab23cd1829b0aa3c09deb8abaf._UY500_UX667_RI_V_TTW_.jpg',
              height: 350.0,
              fit: BoxFit.cover,
            ),
            Container(
              width: double.infinity,
              height: 350.0,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.center,
                  end: Alignment.bottomCenter,
                  colors: <Color>[
                    Colors.black26,
                    Colors.black
                  ]
                  )
              ),
            ),
            SafeArea(
              child: NavBarSuperior()
              ),
          ],
        );
  }

  Widget infoserie(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'Texto1',
          style: TextStyle(color: Colors.white, fontSize: 10.0)
          ),
          SizedBox(width: 6.0,),
          Icon(Icons.fiber_manual_record, color: Colors.red, size: 5.0),
          SizedBox(width: 6.0,),
        Text(
          'Texto2',
          style: TextStyle(color: Colors.white, fontSize: 10.0)
          ),
          SizedBox(width: 6.0,),
          Icon(Icons.fiber_manual_record, color: Colors.red, size: 5.0),
          SizedBox(width: 6.0,),
        Text(
          'Texto3',
          style: TextStyle(color: Colors.white, fontSize: 10.0)
          ),
          SizedBox(width: 6.0,),
          Icon(Icons.fiber_manual_record, color: Colors.red, size: 5.0),
          SizedBox(width: 6.0,),
        Text(
          'Texto4',
          style: TextStyle(color: Colors.white, fontSize: 10.0)
          ),
          SizedBox(width: 6.0,),
          Icon(Icons.fiber_manual_record, color: Colors.red, size: 5.0),
          SizedBox(width: 6.0,),
        Text(
          'Texto5',
          style: TextStyle(color: Colors.white, fontSize: 10.0)
          ),
          SizedBox(width: 6.0,),
          Icon(Icons.fiber_manual_record, color: Colors.red, size: 5.0),
          SizedBox(width: 6.0,),
        Text(
          'Texto6',
          style: TextStyle(color: Colors.white, fontSize: 10.0)
          )
      ],
    );
  }

  Widget botonera(){
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Column(
            children: <Widget>[
              Icon(Icons.check, color: Colors.white,),
              SizedBox(height: 3.0,),
              Text(
                'Mi lista', 
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 10.0,
                ),
                )
            ],
          ),
          FlatButton.icon(
            onPressed: () {},
            color: Colors.white, 
            icon: Icon(Icons.play_arrow,
            color: Colors.black,), 
            label: Text('Reproducir'),
            ),
            Column(
            children: <Widget>[
              Icon(Icons.info_outline, color: Colors.white,),
              SizedBox(height: 3.0,),
              Text(
                'Información', 
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 10.0,
                ),
                )
            ],
          ),
        ],
      ),
    );
  }

}

