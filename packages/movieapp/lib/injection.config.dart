// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:movieapp/core/infrastructure/api_helper.dart' as _i5;
import 'package:movieapp/core/infrastructure/dio_injectable_module.dart'
    as _i12;
import 'package:movieapp/feature/application/auth/auth_bloc.dart' as _i3;
import 'package:movieapp/feature/application/movie/movie_bloc.dart' as _i10;
import 'package:movieapp/feature/application/search/search_bloc.dart' as _i11;
import 'package:movieapp/feature/infrastructure/movie/movie_remote_data_source.dart'
    as _i6;
import 'package:movieapp/feature/infrastructure/movie/movie_repository.dart'
    as _i7;
import 'package:movieapp/feature/infrastructure/search/search_remote_data_source.dart'
    as _i8;
import 'package:movieapp/feature/infrastructure/search/search_repository.dart'
    as _i9;

/// ignore_for_file: unnecessary_lambdas
/// ignore_for_file: lines_longer_than_80_chars
extension GetItInjectableX on _i1.GetIt {
  /// initializes the registration of main-scope dependencies inside of [GetIt]
  _i1.GetIt init(
      {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
    final gh = _i2.GetItHelper(this, environment, environmentFilter);
    final dioInjectableModule = _$DioInjectableModule();
    gh.factory<_i3.AuthBloc>(() => _i3.AuthBloc());
    gh.lazySingleton<_i4.Dio>(() => dioInjectableModule.dio);
    gh.singleton<_i5.ApiHelper>(_i5.ApiHelper(gh<_i4.Dio>()));
    gh.factory<_i6.MovieRemoteDataSource>(
        () => _i6.MovieRemoteDataSource(gh<_i5.ApiHelper>()));
    gh.factory<_i7.MovieRepository>(
        () => _i7.MovieRepository(gh<_i6.MovieRemoteDataSource>()));
    gh.factory<_i8.SearchMovieRemoteDataSource>(
        () => _i8.SearchMovieRemoteDataSource(gh<_i5.ApiHelper>()));
    gh.factory<_i9.SearchMovieRepository>(
        () => _i9.SearchMovieRepository(gh<_i8.SearchMovieRemoteDataSource>()));
    gh.factory<_i10.MovieBloc>(() => _i10.MovieBloc(gh<_i7.MovieRepository>()));
    gh.factory<_i11.SearchBloc>(
        () => _i11.SearchBloc(gh<_i9.SearchMovieRepository>()));
    return this;
  }
}

class _$DioInjectableModule extends _i12.DioInjectableModule {}
