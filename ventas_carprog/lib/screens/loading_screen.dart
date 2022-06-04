import 'package:flutter/material.dart';

class LoadingScreen extends StatelessWidget {
  final options = const['Ventas','Clientes','Productos'];
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Products'),
      ),
      body: Center(
        child: CircularProgressIndicator(
          color: Colors.indigo,
        ),
      ),
    );
  }
}
