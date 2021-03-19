import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GlobalKeyService {
  final _gkey = new GlobalKey();

  GlobalKey get gkey => this._gkey;
}
