import 'package:sohii/ui/views/app/locator.dart';
import 'package:sohii/services/shopping_service.dart';
import 'package:stacked/stacked.dart';

class ShoppingCartViewModel extends ReactiveViewModel {
  final _shoppingService = locator<ShoppingService>();
  //TODO testen ob das auch ohne funkt!
  void notfi() => notifyListeners();

  int get totalItems {
    return _shoppingService.getShoppingListLength();
  }

  @override
  List<ReactiveServiceMixin> get reactiveServices => [_shoppingService];
}
