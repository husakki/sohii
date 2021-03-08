import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'dropdownsize_viewmodel.dart';

class DropDownSize extends StatelessWidget {
  final List<String> dropDownList;
  DropDownSize({Key key, @required this.dropDownList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<DropDownSizeViewModel>.reactive(
      builder: (context, model, child) => DropdownButton(
        items: model.getSizesAsDropDownMenu(),
        value: model.getValueChoose,
        onChanged: (newValue) => model.setValueChoose = newValue,
      ),
      viewModelBuilder: () => DropDownSizeViewModel(dropDownList),
    );
  }
}