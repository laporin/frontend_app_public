// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i3;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../features/authentication/data/datasources/authentication_local_data_source.dart'
    as _i9;
import '../../features/authentication/data/datasources/authentication_remote_data_source.dart'
    as _i10;
import '../../features/authentication/data/repositories/backend_authentication_repository.dart'
    as _i12;
import '../../features/authentication/domain/repositories/authentication_repository.dart'
    as _i11;
import '../../features/authentication/domain/usecases/check_authentication_usecase.dart'
    as _i16;
import '../../features/authentication/domain/usecases/login_authentication_usecase.dart'
    as _i20;
import '../../features/authentication/domain/usecases/logout_authentication_usecase.dart'
    as _i21;
import '../../features/authentication/domain/usecases/register_authentication_usecase.dart'
    as _i22;
import '../../features/authentication/presentation/bloc/authentication_bloc.dart'
    as _i24;
import '../../features/category/data/datasources/category_remote_data_source.dart'
    as _i13;
import '../../features/category/data/repositories/backend_category_repository.dart'
    as _i15;
import '../../features/category/domain/repositories/category_repository.dart'
    as _i14;
import '../../features/category/domain/usecases/get_categories_usecase.dart'
    as _i17;
import '../../features/report/data/datasources/report_remote_data_source.dart'
    as _i5;
import '../../features/report/data/repositories/backend_report_repository.dart'
    as _i7;
import '../../features/report/domain/repositories/report_repository.dart'
    as _i6;
import '../../features/report/domain/usecases/get_report_usecase.dart' as _i18;
import '../../features/report/domain/usecases/get_reports_usecase.dart' as _i19;
import '../../features/report/presentation/bloc/report_bloc.dart' as _i23;
import '../../services/secure_storage_service.dart' as _i8;
import 'register_module.dart' as _i25; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.lazySingleton<_i3.Dio>(() => registerModule.dio);
  gh.factory<_i4.FlutterSecureStorage>(
      () => registerModule.flutterSecureStorage);
  gh.factory<_i5.ReportRemoteDataSource>(
      () => _i5.ReportRemoteDataSourceImpl(dio: get<_i3.Dio>()));
  gh.factory<_i6.ReportRepository>(() => _i7.BackendReportRepository(
      remoteDataSource: get<_i5.ReportRemoteDataSource>()));
  gh.factory<_i8.SecureStorageService>(() => _i8.SecureStorageService());
  gh.factory<_i9.AuthenticationLocalDataSource>(() =>
      _i9.AuthenticationLocalDataSourceImpl(
          storageService: get<_i8.SecureStorageService>()));
  gh.factory<_i10.AuthenticationRemoteDataSource>(
      () => _i10.AuthenticationRemoteDataSourceImpl(dio: get<_i3.Dio>()));
  gh.factory<_i11.AuthenticationRepository>(() =>
      _i12.BackendAuthenticationRepository(
          localDataSource: get<_i9.AuthenticationLocalDataSource>(),
          remoteDataSource: get<_i10.AuthenticationRemoteDataSource>()));
  gh.factory<_i13.CategoryRemoteDataSource>(
      () => _i13.CategoryRemoteDataSourceImpl(dio: get<_i3.Dio>()));
  gh.factory<_i14.CategoryRepository>(() => _i15.BackendCategoryRepository(
      remoteDataSource: get<_i13.CategoryRemoteDataSource>()));
  gh.factory<_i16.CheckAuthenticationUsecase>(() =>
      _i16.CheckAuthenticationUsecase(
          repository: get<_i11.AuthenticationRepository>()));
  gh.factory<_i17.GetCategoriesUsecase>(() =>
      _i17.GetCategoriesUsecase(repository: get<_i14.CategoryRepository>()));
  gh.factory<_i18.GetReportUsecase>(
      () => _i18.GetReportUsecase(repository: get<_i6.ReportRepository>()));
  gh.factory<_i19.GetReportsUsecase>(
      () => _i19.GetReportsUsecase(repository: get<_i6.ReportRepository>()));
  gh.factory<_i20.LoginAuthenticationUsecase>(() =>
      _i20.LoginAuthenticationUsecase(
          repository: get<_i11.AuthenticationRepository>()));
  gh.factory<_i21.LogoutAuthenticationUsecase>(() =>
      _i21.LogoutAuthenticationUsecase(
          repository: get<_i11.AuthenticationRepository>()));
  gh.factory<_i22.RegisterAuthenticationUsecase>(() =>
      _i22.RegisterAuthenticationUsecase(
          repository: get<_i11.AuthenticationRepository>()));
  gh.factory<_i23.ReportBloc>(() => _i23.ReportBloc(
      reportsUsecase: get<_i19.GetReportsUsecase>(),
      reportUsecase: get<_i18.GetReportUsecase>()));
  gh.factory<_i24.AuthenticationBloc>(() => _i24.AuthenticationBloc(
      loginUsecase: get<_i20.LoginAuthenticationUsecase>(),
      logoutUsecase: get<_i21.LogoutAuthenticationUsecase>(),
      registerUsecase: get<_i22.RegisterAuthenticationUsecase>(),
      checkAuthUsecase: get<_i16.CheckAuthenticationUsecase>()));
  return get;
}

class _$RegisterModule extends _i25.RegisterModule {}
