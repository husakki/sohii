import 'package:flutter/material.dart';

class DropDownSize extends StatefulWidget {
  const DropDownSize({Key key}) : super(key: key);

  @override
  _DropDownSizeState createState() => _DropDownSizeState();
}

class _DropDownSizeState extends State<DropDownSize> {
  String valueChoose;
  List sizes = ["S", "M", "L", "XL"];

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      items: sizes.map((e) {
        return DropdownMenuItem(
          value: e,
          child: Text(e),
        );
      }).toList(),
      value: valueChoose,
      onChanged: (newValue) => {
        setState(() {
          valueChoose = newValue;
        })
      },
    );
  }
}
