import 'package:sohii/ui/views/app/locator.dart';
import 'package:sohii/ui/views/sharedServices/shopping_service.dart';
import 'package:stacked/stacked.dart';

class ShoppingCartViewModel extends BaseViewModel {
  var _shoppingService = locator<ShoppingService>();

  int get totalItems {
    return _shoppingService.getShoppingListLength();
  }
}
