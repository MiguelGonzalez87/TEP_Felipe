import 'package:flutter/material.dart';

class ItemImg4 extends StatelessWidget {
  //const ItemImg4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 110.0,
          width: 110.0,
          decoration: BoxDecoration(),
        ),
        Image.network(
          'https://static.wikia.nocookie.net/elite/images/6/60/Elite_S1.jpg/revision/latest?cb=20191017060013&path-prefix=es',
          width: 100.0,
          fit: BoxFit.cover,
          ),
          SizedBox(width: 10.0,)
      ],
    );
  }
}