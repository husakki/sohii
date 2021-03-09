import 'package:injectable/injectable.dart';

@lazySingleton
class SizeService {
  //TODO es ist komisch, wenn das nicht null ist dann funkt es auch
  // aber es sollte auch so funkten weil ich es ja sette!!
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
