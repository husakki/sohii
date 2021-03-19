import 'package:flutter/material.dart';
import 'package:sohii/widgets/SizeSelector.dart';
import 'package:stacked/stacked.dart';

import 'dropdownsize_viewmodel.dart';

class DropDownSize extends StatelessWidget {
  DropDownSize({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<DropDownSizeViewModel>.reactive(
      builder: (context, model, child) => Container(
        // color: Colors.lightGreen,
        child: Center(
          child: SizeSelector(model.setValueChoose, model.sizes),
        ),
      ),
      viewModelBuilder: () => DropDownSizeViewModel(),
    );
  }
}
