import 'package:flutter/material.dart';

class ItemImg extends StatelessWidget {
  //const ItemImg({Key? key}) : super(key: key);

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
          'https://es.web.img3.acsta.net/pictures/18/03/16/15/33/3988420.jpg',
          width: 100.0,
          fit: BoxFit.cover,
          ),
          SizedBox(width: 10.0,)
      ],
    );
}
}