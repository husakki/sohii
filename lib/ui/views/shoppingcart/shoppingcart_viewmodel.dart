import 'package:sohii/ui/views/app/locator.dart';
import 'package:sohii/services/shopping_service.dart';
import 'package:stacked/stacked.dart';

class ShoppingCartViewModel extends ReactiveViewModel {
  final _shoppingService = locator<ShoppingService>();

  int get totalItems => _shoppingService.getShoppingListLength();

  @override
  List<ReactiveServiceMixin> get reactiveServices => [_shoppingService];
}
