import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'sizeselector_viewmodel.dart';

class SizeSelectorView extends StatelessWidget {
  SizeSelectorView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SizeSelectorViewModel>.reactive(
      builder: (context, model, child) => Container(
        child: Center(
          child: Stack(
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: model.sizes
                    .map((size) => GestureDetector(
                          onTapDown: (details) {
                            model.setValueChoose(size);
                            model.activeIndex = model.sizes.indexOf(size);
                          },
                          child: AnimatedContainer(
                            duration: Duration(milliseconds: 400),
                            padding: const EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                              border: model.activeIndex !=
                                      model.sizes.indexOf(size)
                                  ? null
                                  : Border.all(width: 2, color: Colors.white),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                            ),
                            child: Text(
                              size,
                              key: model.gKeysMap[size],
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ))
                    .toList(),
              ),
            ],
          ),
        ),
      ),
      viewModelBuilder: () => SizeSelectorViewModel(),
    );
  }
}
