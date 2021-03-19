import 'package:flutter/material.dart';
import 'package:sohii/services/size_service.dart';
import 'package:sohii/ui/views/app/locator.dart';
import 'package:stacked/stacked.dart';

class SizeSelectorViewModel extends ReactiveViewModel {
  var _sizeService = locator<SizeService>();
  List<String> _sizes = ["S", "M", "L", "XL"];
  int _activeIndex = 0;
  Map<String, GlobalKey> _gKeysMap = new Map();

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

  int get activeIndex => this._activeIndex;
  set activeIndex(newIndex) {
    this._activeIndex = newIndex;
  }

  Map<String, GlobalKey> get gKeysMap {
    if (this._gKeysMap == null) _initgKeysMap();
    return this._gKeysMap;
  }

  @override
  List<ReactiveServiceMixin> get reactiveServices => [_sizeService];

  void _initgKeysMap() {
    print("servus");
    for (String size in this._sizes) {
      gKeysMap[size] = new GlobalKey();
    }
  }
}
