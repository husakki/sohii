import 'package:sohii/services/globalKey_service.dart';
import 'package:sohii/ui/views/app/locator.dart';
import 'package:stacked/stacked.dart';

class WarenKorbViewModel extends BaseViewModel {
  final _globalKeyService = locator<GlobalKeyService>();
  get gKey => _globalKeyService.gkey;
}
