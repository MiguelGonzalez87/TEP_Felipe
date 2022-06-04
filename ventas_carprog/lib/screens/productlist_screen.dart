

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:ventas_carprog/services/services.dart';
import 'package:ventas_carprog/screens/screens.dart';
//import 'package:ventas_carprog/screens/product_screen.dart';
import 'package:ventas_carprog/widgets/product_card.dart';

class ProductListScreen extends StatelessWidget {
  //ProductListScreen get route => ProductScreen();


  @override
  Widget build(BuildContext context) {
    final productsService = Provider.of<ProductsService>(context);
    if( productsService.isLoading ) return LoadingScreen();

    return Scaffold(
      appBar: AppBar(
        title: Text('Productos'),
      ),
      body: ListView.builder(
          itemCount: productsService.products.length,
          itemBuilder: (BuildContext context, int index) => GestureDetector(
              //child: ProductoCard(),
              onTap: () => Navigator.pushNamed(context, 'product'),
              child: ProductCard(
                product: productsService.products[index],
              ),
          )
          ),
        floatingActionButton: FloatingActionButton(
        child: Icon( Icons.add ),
        onPressed: () {}
        ),
    );
  }

}

