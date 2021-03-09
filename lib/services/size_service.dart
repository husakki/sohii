import 'package:injectable/injectable.dart';

@lazySingleton
class SizeService {
  String _currentSize;

  String currentSize() {
    print("ich returne dir: " + this._currentSize.toString());
    return this._currentSize;
  }

  String idk() {
    return this._currentSize;
  }

  void setcurrentSize(value) {
    this._currentSize = value;
    print("ich bin currentSize im Service: " + this._currentSize);
  }
}
