import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ventas_carprog/router/app_routes.dart';
import 'package:ventas_carprog/services/services.dart';

class HomeScreen extends StatelessWidget {
  //final options = const['Ventas','Clientes','Productos'];
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final productsService = Provider.of<ProductsService>(context);


    final menuOptions = AppRoutes.menuOptions;
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeScreen'),
        elevation: 0,
        backgroundColor: Colors.indigo,
      ),
      body: ListView.separated(
        itemBuilder: (context,i) => ListTile(
          leading: Icon(menuOptions[i].icon),
          title: Text(menuOptions[i].name),
          //trailing: const Icon(Icons.arrow_forward_ios, color: Colors.indigo,),
          onTap: () {
            Navigator.pushNamed(context, menuOptions[i].route);
          },
        ),
        separatorBuilder: ( _ , __ ) => const Divider(),
        itemCount: menuOptions.length,
      )
    );
  }
}
