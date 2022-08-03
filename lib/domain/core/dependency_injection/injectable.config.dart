// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../../application/downloads/downloads_bloc.dart' as _i6;
import '../../../application/search/search_bloc.dart' as _i5;
import '../../../infrastructure/downloads/downloads_repository.dart' as _i4;
import '../../downloads/downloads_service.dart'
    as _i3; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.DownloadsService>(() => _i4.DownloadsRepostory());
  gh.factory<_i5.SearchBloc>(() => _i5.SearchBloc());
  gh.factory<_i6.DownloadsBloc>(
      () => _i6.DownloadsBloc(get<_i3.DownloadsService>()));
  return get;
}
