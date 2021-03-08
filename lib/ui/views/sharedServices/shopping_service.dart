import 'package:injectable/injectable.dart';
import 'package:sohii/ui/views/sharedServices/shoppedProducts.dart';

@lazySingleton
class ShoppingService {
  List<ShoppedProducts> _shoppingList = [];

  List<ShoppedProducts> get shoppingList => this._shoppingList;

  ShoppedProducts addToShoppingList(ShoppedProducts item) {
    this._shoppingList.add(item);
    return item;
  }

  void removeItemFromShoppingList(ShoppedProducts item) {
    this._shoppingList.remove(item);
  }

  int getShoppingListLength() {
    return this._shoppingList.length;
  }
}
