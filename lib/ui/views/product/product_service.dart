import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter/services.dart' show rootBundle;

import 'products.dart';

@lazySingleton
class ProductService {
  Future<List<Products>> getProducts() async {
    String jsonString = await _loadFromAsset();
    Map<String, dynamic> jsonResponse = jsonDecode(jsonString);
    List<Products> jsonProducts = [];
    jsonResponse.forEach((key, value) {
      jsonProducts.add(Products(
          value['Product'], value['Description'], value['ProductInformation']));
    });
    return jsonProducts;
  }

  Future<String> _loadFromAsset() async {
    return await rootBundle.loadString("assets/json/products.json");
  }
}
