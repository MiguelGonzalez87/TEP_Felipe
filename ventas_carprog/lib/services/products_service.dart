import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
//import 'package:cloud_firestore/cloud_firestore.dart';
//import 'package:firebase_core/firebase_core.dart';
import 'package:ventas_carprog/models/models.dart';
import 'package:http/http.dart' as http;


class ProductsService extends ChangeNotifier {

  final String _baseUrl = 'productos-varios-ecd4d-default-rtdb.firebaseio.com';
  final List<Product> products = [];
  // late Product selectedProduct;
  //
  // File? newPictureFile;
  //
  bool isLoading = true;
  // bool isSaving = false;
  //
  ProductsService() {
  this.loadProducts();
  }
  //TODO: <List<Product>>
  Future loadProducts() async {
  //
    this.isLoading = true;
    notifyListeners();
  //
  final url = Uri.https( _baseUrl, 'products.json');
  final resp = await http.get( url );
  //
  final Map<String, dynamic> productsMap = json.decode( resp.body );
  //print(productsMap);
  //
  productsMap.forEach((key, value) {
    final tempProduct = Product.fromMap( value );
    tempProduct.id = key;
    this.products.add( tempProduct );
  });
  //print(this.products[0].name);
  //
    this.isLoading = false;
    notifyListeners();

    return this.products;
  //
  }

  //   //TODO: Actualizar el listado de productos



}