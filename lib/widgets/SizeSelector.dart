import 'package:flutter/material.dart';

class SizeSelector extends StatefulWidget {
  final Function _selectIt;
  final List<String> _sizes;
  SizeSelector(this._selectIt, this._sizes);

  @override
  _SizeSelectorState createState() => _SizeSelectorState();
}

class _SizeSelectorState extends State<SizeSelector>
    with SingleTickerProviderStateMixin {
  int activeIndex = 0;
  Map<String, GlobalKey> gKeysMap = new Map();
  @override
  Widget build(BuildContext context) {
    for (String size in this.widget._sizes) {
      gKeysMap[size] = new GlobalKey();
    }

    return Stack(
      children: [
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: this
              .widget
              ._sizes
              .map((size) => GestureDetector(
                    onTapDown: (details) {
                      this.widget._selectIt(size);
                      setState(
                          () => activeIndex = this.widget._sizes.indexOf(size));
                    },
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 400),
                      padding: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        border: activeIndex != this.widget._sizes.indexOf(size)
                            ? null
                            : Border.all(width: 2, color: Colors.white),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: Text(
                        size,
                        key: gKeysMap[size],
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ))
              .toList(),
        ),
      ],
    );
  }
}
