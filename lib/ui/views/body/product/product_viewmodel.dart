import 'package:sohii/datatypes/products.dart';
import 'package:sohii/services/size_service.dart';
import 'package:sohii/ui/views/app/locator.dart';
import 'package:sohii/services/product_service.dart';
import 'package:stacked/stacked.dart';

class ProductViewModel extends FutureViewModel<List<Products>> {
  var _product = locator<ProductService>();

  @override
  Future<List<Products>> futureToRun() {
    return this._product.getProducts();
  }
}
