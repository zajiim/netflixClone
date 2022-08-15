// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../../application/downloads/downloads_bloc.dart' as _i10;
import '../../../application/fast_laugh/fast_laugh_bloc.dart' as _i5;
import '../../../application/new_and_hot/new_and_hot_bloc.dart' as _i11;
import '../../../application/search/search_bloc.dart' as _i12;
import '../../../infrastructure/downloads/downloads_repository.dart' as _i4;
import '../../../infrastructure/new&hot/new_&_hot_repository.dart' as _i7;
import '../../../infrastructure/search/search_repository.dart' as _i9;
import '../../downloads/downloads_service.dart' as _i3;
import '../../new&hot/new_&_hot_service.dart' as _i6;
import '../../search/search_service.dart'
    as _i8; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.DownloadsService>(() => _i4.DownloadsRepository());
  gh.factory<_i5.FastLaughBloc>(
      () => _i5.FastLaughBloc(get<_i3.DownloadsService>()));
  gh.lazySingleton<_i6.NewAndHotService>(() => _i7.NewAndHotRepository());
  gh.lazySingleton<_i8.SearchService>(() => _i9.SearchRepository());
  gh.factory<_i10.DownloadsBloc>(
      () => _i10.DownloadsBloc(get<_i3.DownloadsService>()));
  gh.factory<_i11.NewAndHotBloc>(
      () => _i11.NewAndHotBloc(get<_i6.NewAndHotService>()));
  gh.factory<_i12.SearchBloc>(() =>
      _i12.SearchBloc(get<_i3.DownloadsService>(), get<_i8.SearchService>()));
  return get;
}
