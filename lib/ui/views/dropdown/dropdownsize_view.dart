import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:sohii/widgets/SizeSelector.dart';
import 'package:stacked/stacked.dart';

import 'dropdownsize_viewmodel.dart';

class DropDownSize extends StatelessWidget {
  DropDownSize({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<DropDownSizeViewModel>.reactive(
      builder: (context, model, child) => Container(
        color: Colors.lightGreen,
        child: Center(
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizeSelector(model.setValueChoose, model.sizes[0]),
              SizeSelector(model.setValueChoose, model.sizes[1]),
              SizeSelector(model.setValueChoose, model.sizes[2]),
              SizeSelector(model.setValueChoose, model.sizes[3]),
            ],
          ),
        ),
      ),
      viewModelBuilder: () => DropDownSizeViewModel(),
    );
  }
}
