import 'package:sohii/datatypes/products.dart';

class ShoppedProducts extends Products {
  int _amount = 0;
  String _size = "";
  Products _products;

  ShoppedProducts(this._amount, this._size, this._products)
      : super(_products.product, _products.description,
            _products.productInformation, _products.mainColour);
}
