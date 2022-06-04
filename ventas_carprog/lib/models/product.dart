

import 'dart:convert';
import 'package:ventas_carprog/models/models.dart';

class Product {
  Product({
    this.id,
    required this.available,
    this.cantidad,
    this.gaveta,
    required this.name,
    this.picture,
    required this.price,
  });

  String? id;
  bool available;
  int? cantidad;
  String? gaveta;
  String name;
  String? picture;
  double price;

  factory Product.fromJson(String str) => Product.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Product.fromMap(Map<String, dynamic> json) => Product(
    id: json["Id"] == null ? null : json["Id"],
    available: json["available"],
    cantidad: json["cantidad"],
    gaveta: json["gaveta"],
    name: json["name"],
    picture: json["picture"],
    price: json["price"].toDouble(),
  );

  Map<String, dynamic> toMap() => {
    "Id": id == null ? null : id,
    "available": available,
    "cantidad": cantidad,
    "gaveta": gaveta,
    "name": name,
    "picture": picture,
    "price": price,
  };
}
