import 'package:sohii/ui/views/app/locator.dart';
import 'package:sohii/ui/views/product/products.dart';
import 'package:sohii/ui/views/sharedServices/shoppedProducts.dart';
import 'package:sohii/ui/views/sharedServices/shopping_service.dart';
import 'package:stacked/stacked.dart';

class ShoppingCartButtonViewModel extends BaseViewModel {
  final _shoppingService = locator<ShoppingService>();

  ShoppedProducts addItem(int amount, String size, Products products) {
    ShoppedProducts newItem = ShoppedProducts(amount, size, products);
    _shoppingService.addToShoppingList(newItem);
    return newItem;
  }
}
