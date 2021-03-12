import 'package:flutter/material.dart';

class SizeSelector extends StatelessWidget {
  final Function _selectIt;
  final List<String> _sizes;
  const SizeSelector(this._selectIt, this._sizes);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: this
          ._sizes
          .map((size) => GestureDetector(
                onTap: () {
                  this._selectIt(size);
                },
                child: Text(
                  size,
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ))
          .toList(),
    );
  }
}
