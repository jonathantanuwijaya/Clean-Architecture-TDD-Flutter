// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'core/infrastructure/api_helper.dart' as _i5;
import 'core/infrastructure/dio_injectable_module.dart' as _i12;
import 'feature/application/auth/auth_bloc.dart' as _i3;
import 'feature/application/movie/movie_bloc.dart' as _i10;
import 'feature/application/search/search_bloc.dart' as _i11;
import 'feature/infrastructure/movie/movie_remote_data_source.dart' as _i6;
import 'feature/infrastructure/movie/movie_repository.dart' as _i7;
import 'feature/infrastructure/search/search_remote_data_source.dart' as _i8;
import 'feature/infrastructure/search/search_repository.dart'
    as _i9; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final dioInjectableModule = _$DioInjectableModule();
  gh.factory<_i3.AuthBloc>(() => _i3.AuthBloc());
  gh.lazySingleton<_i4.Dio>(() => dioInjectableModule.dio);
  gh.singleton<_i5.ApiHelper>(_i5.ApiHelper(get<_i4.Dio>()));
  gh.factory<_i6.MovieRemoteDataSource>(
      () => _i6.MovieRemoteDataSource(get<_i5.ApiHelper>()));
  gh.factory<_i7.MovieRepository>(
      () => _i7.MovieRepository(get<_i6.MovieRemoteDataSource>()));
  gh.factory<_i8.SearchMovieRemoteDataSource>(
      () => _i8.SearchMovieRemoteDataSource(get<_i5.ApiHelper>()));
  gh.factory<_i9.SearchMovieRepository>(
      () => _i9.SearchMovieRepository(get<_i8.SearchMovieRemoteDataSource>()));
  gh.factory<_i10.MovieBloc>(() => _i10.MovieBloc(get<_i7.MovieRepository>()));
  gh.factory<_i11.SearchBloc>(
      () => _i11.SearchBloc(get<_i9.SearchMovieRepository>()));
  return get;
}

class _$DioInjectableModule extends _i12.DioInjectableModule {}
