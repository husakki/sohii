import 'package:sohii/services/size_service.dart';
import 'package:sohii/ui/views/app/locator.dart';
import 'package:sohii/datatypes/products.dart';
import 'package:sohii/datatypes/shoppedProducts.dart';
import 'package:sohii/services/shopping_service.dart';
import 'package:stacked/stacked.dart';

class ShoppingCartButtonViewModel extends ReactiveViewModel {
  final _shoppingService = locator<ShoppingService>();

  void addItem(String size, Products products) {
    print("Füge folgendes Item in den Warenkorb: ---> " +
        products.product +
        " mit der Größe: ---> " +
        size);
    ShoppedProducts newItem = ShoppedProducts(size, products);
    _shoppingService.addToShoppingList(newItem);
    notifyListeners(); // brauch ich das noch?
  }

  int get totalItems => _shoppingService.getShoppingListLength();

  @override
  List<ReactiveServiceMixin> get reactiveServices => [_shoppingService];
}
