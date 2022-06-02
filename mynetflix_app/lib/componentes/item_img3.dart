import 'package:flutter/material.dart';

class ItemImg3 extends StatelessWidget {
  //const ItemImg3({Key? key}) : super(key: key);

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
          'https://es.web.img3.acsta.net/c_310_420/pictures/21/09/29/16/57/5761354.jpg',
          width: 100.0,
          fit: BoxFit.cover,
          ),
          SizedBox(width: 10.0,)
      ],
    );
  }
}