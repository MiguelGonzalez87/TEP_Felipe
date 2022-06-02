import 'package:flutter/material.dart';

class ItemImg2 extends StatelessWidget {
  //const ItemImg2({Key? key}) : super(key: key);

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
          'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/guardianes-de-la-galaxia-1525787553.jpg?crop=1xw:1xh;center,top&resize=480:*',
          width: 100.0,
          fit: BoxFit.cover,
          ),
          SizedBox(width: 10.0,)
      ],
    );
  }
}