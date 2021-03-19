import 'package:flutter/material.dart';
import 'package:sohii/ui/views/warenkorb/warenkorb_viewmodel.dart';
import 'package:stacked/stacked.dart';

class WarenKorbView extends StatelessWidget {
  const WarenKorbView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<WarenKorbViewModel>.nonReactive(
      builder: (context, model, child) => Container(
        child: Text(
          "WarenKorb",
          key: model.gKey,
          style: TextStyle(fontSize: 30),
        ),
      ),
      viewModelBuilder: () => WarenKorbViewModel(),
    );
  }
}
