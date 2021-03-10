import 'package:sohii/services/size_service.dart';
import 'package:sohii/ui/views/app/locator.dart';
import 'package:sohii/datatypes/products.dart';
import 'package:sohii/datatypes/shoppedProducts.dart';
import 'package:sohii/services/shopping_service.dart';
import 'package:stacked/stacked.dart';

class ShoppingCartButtonViewModel extends ReactiveViewModel {
  final _shoppingService = locator<ShoppingService>();

  void addItem(String size, Products products) {
    print("size die ich als Shoppingcart bekomme " + size.toString());
    ShoppedProducts newItem = ShoppedProducts(size, products);
    print("size: " + size + " product: " + products.product);
    _shoppingService.addToShoppingList(newItem);
    notifyListeners(); // brauch ich das noch?
  }

  int get totalItems => _shoppingService.getShoppingListLength();

  @override
  List<ReactiveServiceMixin> get reactiveServices => [_shoppingService];
}
