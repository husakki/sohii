import 'package:flutter/material.dart';

class SizeSelector extends StatelessWidget {
  final Function _selectIt;
  final String _size;
  const SizeSelector(this._selectIt, this._size);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        this._selectIt(this._size);
      },
      child: Text(this._size),
    );
  }
}
