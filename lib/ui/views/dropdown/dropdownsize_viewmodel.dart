import 'package:flutter/material.dart';
import 'package:sohii/services/size_service.dart';
import 'package:sohii/ui/views/app/locator.dart';
import 'package:stacked/stacked.dart';

class DropDownSizeViewModel extends BaseViewModel {
  var _sizeService = locator<SizeService>();
  List<String> sizes = ["S", "M", "L", "XL"];

  String get getValueChoose => _sizeService.currentSize();

  set setValueChoose(String newvalueChoose) {
    // print("aktuell bin ich: " +
    //     getValueChoose.toString() +
    //     " und ich moechte: " +
    //     newvalueChoose);
    _sizeService.setcurrentSize(newvalueChoose);
    // print("setze eine Size; " + newvalueChoose);
    // print("was ich vom serivce getter bekommen; " + _sizeService.currentSize);
    notifyListeners();
  }

  List<DropdownMenuItem<String>> getSizesAsDropDownMenu() {
    return sizes.map((e) {
      return DropdownMenuItem(
        value: e,
        child: Text(e),
      );
    }).toList();
  }
}
