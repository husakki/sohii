import 'package:flutter/material.dart';
import 'package:sohii/services/size_service.dart';
import 'package:sohii/ui/views/app/locator.dart';
import 'package:stacked/stacked.dart';

class DropDownSizeViewModel extends ReactiveViewModel {
  var _sizeService = locator<SizeService>();
  List<String> _sizes = ["S", "M", "L", "XL"];

  List<String> get sizes => this._sizes;

  String get getValueChoose => _sizeService.currentSize;

  setValueChoose(String newvalueChoose) {
    _sizeService.setcurrentSize(newvalueChoose);
    notifyListeners(); // brauch ich das noch?
  }

  List<DropdownMenuItem<String>> getSizesAsDropDownMenu() {
    return this._sizes.map((e) {
      return DropdownMenuItem(
        value: e,
        child: Text(e),
      );
    }).toList();
  }

  @override
  List<ReactiveServiceMixin> get reactiveServices => [_sizeService];
}
