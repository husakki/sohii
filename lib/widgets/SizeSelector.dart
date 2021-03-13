import 'package:flutter/material.dart';

class SizeSelector extends StatefulWidget {
  final Function _selectIt;
  final List<String> _sizes;
  SizeSelector(this._selectIt, this._sizes);

  @override
  _SizeSelectorState createState() => _SizeSelectorState();
}

class _SizeSelectorState extends State<SizeSelector> {
  Offset tapOffset;
  @override
  Widget build(BuildContext context) {
    Map<String, GlobalKey> gKeysMap = new Map();
    for (String size in this.widget._sizes) {
      gKeysMap[size] = new GlobalKey();
    }
    return Stack(
      children: [
        if (tapOffset != null)
          AnimatedPositioned.fromRect(
            rect: Rect.fromCircle(
              center: tapOffset,
              radius: 60.0,
            ),
            child: Container(width: 80, height: 80, color: Colors.red),
            duration: Duration(milliseconds: 400),
            curve: Curves.bounceOut,
          ),
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: this
              .widget
              ._sizes
              .map((size) => GestureDetector(
                    onTapDown: (details) {
                      this.widget._selectIt(size);
                      RenderBox rBox =
                          gKeysMap[size].currentContext.findRenderObject();
                      print(gKeysMap[size].currentContext.size.width);
                      // print(rBox.localToGlobal(Offset.zero).dx);
                      setState(() {
                        tapOffset = Offset(
                            gKeysMap[size].currentContext.size.width, 20);
                        print("offset: ${tapOffset}");
                      });
                    },
                    child: Text(
                      size,
                      key: gKeysMap[size],
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ))
              .toList(),
        ),
      ],
    );
  }
}
