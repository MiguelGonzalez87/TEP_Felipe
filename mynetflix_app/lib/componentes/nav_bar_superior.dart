import 'package:flutter/material.dart';


class NavBarSuperior extends StatelessWidget {
  //const NavBarSuperior({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Image.asset('assets/netflix.png', 
        width: 80,
        ),
        Text('Series', 
        style: TextStyle(color: Colors.white, fontSize: 16.0)
        ),
        Text('Películas',
        style: TextStyle(color: Colors.white, fontSize: 16.0)
        ),
        Text('Categorias',
        style: TextStyle(color: Colors.white, fontSize: 16.0)
        )
      ],
    );
  }
} 