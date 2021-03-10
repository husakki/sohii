import 'package:sohii/services/size_service.dart';
import 'package:sohii/ui/views/app/locator.dart';
import 'package:sohii/services/product_service.dart';
import 'package:stacked/stacked.dart';

import '../../../datatypes/products.dart';

class ProductViewModel extends ReactiveViewModel {
  var _product = locator<ProductService>();
  var _sizeService = locator<SizeService>();

  void notifi() => notifyListeners();

  Future<List<Products>> get picturePath => _product.getProducts();
  String get selectedSize => _sizeService.currentSize;

  @override
  List<ReactiveServiceMixin> get reactiveServices => [_sizeService];
}
