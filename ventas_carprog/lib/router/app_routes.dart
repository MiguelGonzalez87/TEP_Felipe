

//import 'dart:js';

import 'package:flutter/material.dart';
import 'package:ventas_carprog/models/menu_option.dart';
import 'package:ventas_carprog/screens/screens.dart';

class AppRoutes{
  static const initialRoute = 'home';
  static final menuOptions = <MenuOption>[
    MenuOption(route: 'home', name: 'Home', screen: HomeScreen(), icon: Icons.list_alt_sharp),
    MenuOption(route: 'ventas', name: 'Ventas', screen: VentasScreen(), icon: Icons.list_alt_sharp),
    MenuOption(route: 'clientes', name: 'Clientes', screen: ClientesScreen(), icon: Icons.list_alt_sharp),
    MenuOption(route: 'productos', name: 'Productos', screen: ProductListScreen(), icon: Icons.list_alt_sharp),
    //MenuOption(route: 'product', name: 'Product', screen: ProductScreen(), icon: Icons.list_alt_sharp)
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes(){

    Map<String, Widget Function(BuildContext)> appRoutes = {
  };
  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'listview' : ( _ ) => Listview1Screen(),
  //   'home' : ( _ ) => HomeScreen(),
    for(final option in menuOptions){
      appRoutes.addAll({ option.route : ( BuildContext context ) => option.screen });
    }
    return appRoutes;
  }


  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
        builder: (context) => const AlertScreen(),
    );
  }
}