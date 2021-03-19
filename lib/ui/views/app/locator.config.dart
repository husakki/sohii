// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../../services/globalKey_service.dart' as _i3;
import '../../../services/product_service.dart' as _i4;
import '../../../services/shopping_service.dart' as _i5;
import '../../../services/size_service.dart'
    as _i6; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String environment, _i2.EnvironmentFilter environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.GlobalKeyService>(() => _i3.GlobalKeyService());
  gh.lazySingleton<_i4.ProductService>(() => _i4.ProductService());
  gh.lazySingleton<_i5.ShoppingService>(() => _i5.ShoppingService());
  gh.lazySingleton<_i6.SizeService>(() => _i6.SizeService());
  return get;
}
