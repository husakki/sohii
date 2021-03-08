import 'package:injectable/injectable.dart';
import 'package:observable_ish/observable_ish.dart';
import 'package:sohii/ui/views/sharedServices/shoppedProducts.dart';
import 'package:stacked/stacked.dart';

@lazySingleton
class ShoppingService with ReactiveServiceMixin {
  RxList<ShoppedProducts> _shoppingList = RxList<ShoppedProducts>();

  List<ShoppedProducts> get shoppingList => this._shoppingList.toList();

  ShoppingService() {
    listenToReactiveValues([_shoppingList]);
  }

  ShoppedProducts addToShoppingList(ShoppedProducts item) {
    this._shoppingList.add(item);
    return item;
  }

  void removeItemFromShoppingList(ShoppedProducts item) {
    this._shoppingList.remove(item);
  }

  int getShoppingListLength() => this._shoppingList.length;
}
