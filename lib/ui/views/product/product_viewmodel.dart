import 'package:sohii/ui/views/app/locator.dart';
import 'package:sohii/ui/views/product/product_service.dart';
import 'package:stacked/stacked.dart';

import 'products.dart';

class ProductViewModel extends BaseViewModel {
  //TODO passt nicht hier rein die beiden Lists
  final _sizes = ["S", "M", "L", "XL"];
  final _amount = [
    "1",
    "2",
    "3",
    "4",
    "5",
    "6",
    "7",
    "8",
    "9",
  ];

  List<String> get getSizes => this._sizes;
  List<String> get getAmount => this._amount;

  var _product = locator<ProductService>();

  Future<List<Products>> get picturePath => _product.getProducts();
}
