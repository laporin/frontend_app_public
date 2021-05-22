// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i3;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../features/authentication/data/datasources/authentication_local_data_source.dart'
    as _i6;
import '../features/authentication/data/datasources/authentication_remote_data_source.dart'
    as _i7;
import '../features/authentication/data/repositories/backend_authentication_repository.dart'
    as _i9;
import '../features/authentication/domain/repositories/authentication_repository.dart'
    as _i8;
import '../features/authentication/domain/usecases/check_authentication_usecase.dart'
    as _i10;
import '../features/authentication/domain/usecases/login_authentication_usecase.dart'
    as _i11;
import '../features/authentication/domain/usecases/logout_authentication_usecase.dart'
    as _i12;
import '../features/authentication/domain/usecases/register_authentication_usecase.dart'
    as _i13;
import '../features/authentication/presentation/bloc/authentication_bloc.dart'
    as _i14;
import '../services/secure_storage_service.dart' as _i5;
import 'register_module.dart' as _i15; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.lazySingleton<_i3.Dio>(() => registerModule.dio);
  gh.factory<_i4.FlutterSecureStorage>(
      () => registerModule.flutterSecureStorage);
  gh.factory<_i5.SecureStorageService>(() => _i5.SecureStorageService());
  gh.factory<_i6.AuthenticationLocalDataSource>(() =>
      _i6.AuthenticationLocalDataSourceImpl(
          storageService: get<_i5.SecureStorageService>()));
  gh.factory<_i7.AuthenticationRemoteDataSource>(
      () => _i7.AuthenticationRemoteDataSourceImpl(dio: get<_i3.Dio>()));
  gh.factory<_i8.AuthenticationRepository>(() =>
      _i9.BackendAuthenticationRepository(
          localDataSource: get<_i6.AuthenticationLocalDataSource>(),
          remoteDataSource: get<_i7.AuthenticationRemoteDataSource>()));
  gh.factory<_i10.CheckAuthenticationUsecase>(() =>
      _i10.CheckAuthenticationUsecase(
          repository: get<_i8.AuthenticationRepository>()));
  gh.factory<_i11.LoginAuthenticationUsecase>(() =>
      _i11.LoginAuthenticationUsecase(
          repository: get<_i8.AuthenticationRepository>()));
  gh.factory<_i12.LogoutAuthenticationUsecase>(() =>
      _i12.LogoutAuthenticationUsecase(
          repository: get<_i8.AuthenticationRepository>()));
  gh.factory<_i13.RegisterAuthenticationUsecase>(() =>
      _i13.RegisterAuthenticationUsecase(
          repository: get<_i8.AuthenticationRepository>()));
  gh.factory<_i14.AuthenticationBloc>(() => _i14.AuthenticationBloc(
      loginUsecase: get<_i11.LoginAuthenticationUsecase>(),
      registerUsecase: get<_i13.RegisterAuthenticationUsecase>(),
      checkAuthUsecase: get<_i10.CheckAuthenticationUsecase>()));
  return get;
}

class _$RegisterModule extends _i15.RegisterModule {}
