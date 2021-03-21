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
              child: Column(
                children: [
                  Image(
                    alignment: Alignment.center,
                    image: AssetImage("assets/image/" + model.title),
                    height: 200,
                  ),
                  Text(
                    "Lorem ipsum dolor sit amet, consetetur sadipscing elitr,",
                    style: TextStyle(
                      fontSize: 17,
                    ),
                  ),
                ],
              ),
            ),
        viewModelBuilder: () => LogoViewModel());
  }
}
