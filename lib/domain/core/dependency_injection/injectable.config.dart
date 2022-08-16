// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../../application/downloads/downloads_bloc.dart' as _i12;
import '../../../application/fast_laugh/fast_laugh_bloc.dart' as _i5;
import '../../../application/home/home_bloc.dart' as _i13;
import '../../../application/new_and_hot/new_and_hot_bloc.dart' as _i14;
import '../../../application/search/search_bloc.dart' as _i15;
import '../../../infrastructure/downloads/downloads_repository.dart' as _i4;
import '../../../infrastructure/home/home_repository.dart' as _i7;
import '../../../infrastructure/new&hot/new_&_hot_repository.dart' as _i9;
import '../../../infrastructure/search/search_repository.dart' as _i11;
import '../../downloads/downloads_service.dart' as _i3;
import '../../home/home_service.dart' as _i6;
import '../../new&hot/new_&_hot_service.dart' as _i8;
import '../../search/search_service.dart'
    as _i10; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.DownloadsService>(() => _i4.DownloadsRepository());
  gh.factory<_i5.FastLaughBloc>(
      () => _i5.FastLaughBloc(get<_i3.DownloadsService>()));
  gh.lazySingleton<_i6.HomeService>(() => _i7.HomeRepository());
  gh.lazySingleton<_i8.NewAndHotService>(() => _i9.NewAndHotRepository());
  gh.lazySingleton<_i10.SearchService>(() => _i11.SearchRepository());
  gh.factory<_i12.DownloadsBloc>(
      () => _i12.DownloadsBloc(get<_i3.DownloadsService>()));
  gh.factory<_i13.HomeBloc>(() => _i13.HomeBloc(get<_i6.HomeService>()));
  gh.factory<_i14.NewAndHotBloc>(
      () => _i14.NewAndHotBloc(get<_i8.NewAndHotService>()));
  gh.factory<_i15.SearchBloc>(() =>
      _i15.SearchBloc(get<_i3.DownloadsService>(), get<_i10.SearchService>()));
  return get;
}
