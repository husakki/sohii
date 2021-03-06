import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'header_viewmodel.dart';

class HeaderView extends StatelessWidget {
  const HeaderView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HeaderViewModel>.nonReactive(
        builder: (context, model, child) => Container(
              child: Text(
                model.title,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
            ),
        viewModelBuilder: () => HeaderViewModel());
  }
}
