import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class DropDownSizeViewModel extends BaseViewModel {
  List<String> sizes = [];
  String valueChoose;

  DropDownSizeViewModel(this.sizes);

  String get getValueChoose => this.valueChoose;

  set setValueChoose(String valueChoose) {
    this.valueChoose = valueChoose;
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
