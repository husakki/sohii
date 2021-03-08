import 'package:sohii/ui/views/app/locator.dart';
import 'package:sohii/ui/views/product/products.dart';
import 'package:sohii/ui/views/sharedServices/shoppedProducts.dart';
import 'package:sohii/ui/views/sharedServices/shopping_service.dart';
import 'package:stacked/stacked.dart';

class ShoppingCartButtonViewModel extends ReactiveViewModel {
  final _shoppingService = locator<ShoppingService>();

  void addItem(int amount, String size, Products products) {
    ShoppedProducts newItem = ShoppedProducts(amount, size, products);
    _shoppingService.addToShoppingList(newItem);
    notifyListeners();
  }

  int get totalItems => _shoppingService.getShoppingListLength();

  @override
  List<ReactiveServiceMixin> get reactiveServices => [_shoppingService];
}