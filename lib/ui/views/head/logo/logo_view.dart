import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'logo_viewmodel.dart';

class LogoView extends StatelessWidget {
  const LogoView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<LogoViewModel>.nonReactive(
        builder: (context, model, child) => Container(
              // width: double.infinity,
              child: Image(
                alignment: Alignment.center,
                image: AssetImage("assets/image/" + model.title),
                height: 200,
              ),
            ),
        viewModelBuilder: () => LogoViewModel());
  }
}
