import 'package:injectable/injectable.dart';
import 'package:observable_ish/observable_ish.dart';
import 'package:stacked/stacked.dart';

@lazySingleton
class SizeService with ReactiveServiceMixin {
  RxValue<String> _currentSize = RxValue<String>();

  SizeService() {
    listenToReactiveValues([_currentSize]);
  }

  String get currentSize => this._currentSize.value;

  void setcurrentSize(inputValue) {
    this._currentSize.value = inputValue;
  }
}
