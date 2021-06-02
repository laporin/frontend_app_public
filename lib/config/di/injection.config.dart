// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i3;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../features/authentication/data/datasources/authentication_local_data_source.dart'
    as _i12;
import '../../features/authentication/data/datasources/authentication_remote_data_source.dart'
    as _i13;
import '../../features/authentication/data/repositories/backend_authentication_repository.dart'
    as _i15;
import '../../features/authentication/domain/repositories/authentication_repository.dart'
    as _i14;
import '../../features/authentication/domain/usecases/check_authentication_usecase.dart'
    as _i19;
import '../../features/authentication/domain/usecases/login_authentication_usecase.dart'
    as _i26;
import '../../features/authentication/domain/usecases/logout_authentication_usecase.dart'
    as _i27;
import '../../features/authentication/domain/usecases/register_authentication_usecase.dart'
    as _i29;
import '../../features/authentication/presentation/bloc/authentication_bloc.dart'
    as _i33;
import '../../features/category/data/datasources/category_remote_data_source.dart'
    as _i16;
import '../../features/category/data/repositories/backend_category_repository.dart'
    as _i18;
import '../../features/category/domain/repositories/category_repository.dart'
    as _i17;
import '../../features/category/domain/usecases/get_categories_usecase.dart'
    as _i22;
import '../../features/category/presentation/bloc/category_bloc.dart' as _i34;
import '../../features/report/data/datasources/report_remote_data_source.dart'
    as _i5;
import '../../features/report/data/repositories/backend_report_repository.dart'
    as _i7;
import '../../features/report/domain/repositories/report_repository.dart'
    as _i6;
import '../../features/report/domain/usecases/delete_report_usecase.dart'
    as _i21;
import '../../features/report/domain/usecases/get_report_usecase.dart' as _i23;
import '../../features/report/domain/usecases/get_reports_usecase.dart' as _i24;
import '../../features/report/domain/usecases/post_report_similarity_usercase.dart'
    as _i28;
import '../../features/report/domain/usecases/post_report_usecase.dart' as _i20;
import '../../features/report/presentation/report_bloc/report_bloc.dart'
    as _i30;
import '../../features/report/presentation/similarity_report_bloc/similarity_report_bloc_bloc.dart'
    as _i31;
import '../../features/user/data/datasources/user_local_data_source.dart'
    as _i9;
import '../../features/user/data/repositories/backend_user_repository.dart'
    as _i11;
import '../../features/user/domain/repositories/user_repository.dart' as _i10;
import '../../features/user/domain/usecases/get_user_authenticated_usecase.dart'
    as _i25;
import '../../features/user/presentation/bloc/user_bloc.dart' as _i32;
import '../../services/secure_storage_service.dart' as _i8;
import 'register_module.dart' as _i35; // ignore_for_file: unnecessary_lambdas

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
  gh.factory<_i9.UserLocalDataSource>(() => _i9.UserLocalDataSourceImpl(
      storageService: get<_i8.SecureStorageService>()));
  gh.factory<_i10.UserRepository>(() => _i11.BackendUserRepository(
      localDataSource: get<_i9.UserLocalDataSource>()));
  gh.factory<_i12.AuthenticationLocalDataSource>(() =>
      _i12.AuthenticationLocalDataSourceImpl(
          storageService: get<_i8.SecureStorageService>()));
  gh.factory<_i13.AuthenticationRemoteDataSource>(
      () => _i13.AuthenticationRemoteDataSourceImpl(dio: get<_i3.Dio>()));
  gh.factory<_i14.AuthenticationRepository>(() =>
      _i15.BackendAuthenticationRepository(
          localDataSource: get<_i12.AuthenticationLocalDataSource>(),
          remoteDataSource: get<_i13.AuthenticationRemoteDataSource>()));
  gh.factory<_i16.CategoryRemoteDataSource>(
      () => _i16.CategoryRemoteDataSourceImpl(dio: get<_i3.Dio>()));
  gh.factory<_i17.CategoryRepository>(() => _i18.BackendCategoryRepository(
      remoteDataSource: get<_i16.CategoryRemoteDataSource>()));
  gh.factory<_i19.CheckAuthenticationUsecase>(() =>
      _i19.CheckAuthenticationUsecase(
          repository: get<_i14.AuthenticationRepository>()));
  gh.factory<_i20.CreateReportUsecase>(
      () => _i20.CreateReportUsecase(repository: get<_i6.ReportRepository>()));
  gh.factory<_i21.DeleteReportUsecase>(
      () => _i21.DeleteReportUsecase(repository: get<_i6.ReportRepository>()));
  gh.factory<_i22.GetCategoriesUsecase>(() =>
      _i22.GetCategoriesUsecase(repository: get<_i17.CategoryRepository>()));
  gh.factory<_i23.GetReportUsecase>(
      () => _i23.GetReportUsecase(repository: get<_i6.ReportRepository>()));
  gh.factory<_i24.GetReportsUsecase>(
      () => _i24.GetReportsUsecase(repository: get<_i6.ReportRepository>()));
  gh.factory<_i25.GetUserAuthenticatedUsecase>(() =>
      _i25.GetUserAuthenticatedUsecase(repository: get<_i10.UserRepository>()));
  gh.factory<_i26.LoginAuthenticationUsecase>(() =>
      _i26.LoginAuthenticationUsecase(
          repository: get<_i14.AuthenticationRepository>()));
  gh.factory<_i27.LogoutAuthenticationUsecase>(() =>
      _i27.LogoutAuthenticationUsecase(
          repository: get<_i14.AuthenticationRepository>()));
  gh.factory<_i28.PostReportSimilarityUsecase>(() =>
      _i28.PostReportSimilarityUsecase(
          repository: get<_i6.ReportRepository>()));
  gh.factory<_i29.RegisterAuthenticationUsecase>(() =>
      _i29.RegisterAuthenticationUsecase(
          repository: get<_i14.AuthenticationRepository>()));
  gh.factory<_i30.ReportBloc>(() => _i30.ReportBloc(
      reportsUsecase: get<_i24.GetReportsUsecase>(),
      reportUsecase: get<_i23.GetReportUsecase>(),
      reportSimilarityUsecase: get<_i28.PostReportSimilarityUsecase>(),
      createReportUsecase: get<_i20.CreateReportUsecase>(),
      deleteReportUsecase: get<_i21.DeleteReportUsecase>()));
  gh.factory<_i31.SimilarityReportBlocBloc>(() =>
      _i31.SimilarityReportBlocBloc(get<_i28.PostReportSimilarityUsecase>()));
  gh.factory<_i32.UserBloc>(
      () => _i32.UserBloc(get<_i25.GetUserAuthenticatedUsecase>()));
  gh.factory<_i33.AuthenticationBloc>(() => _i33.AuthenticationBloc(
      loginUsecase: get<_i26.LoginAuthenticationUsecase>(),
      logoutUsecase: get<_i27.LogoutAuthenticationUsecase>(),
      registerUsecase: get<_i29.RegisterAuthenticationUsecase>(),
      checkAuthUsecase: get<_i19.CheckAuthenticationUsecase>()));
  gh.factory<_i34.CategoryBloc>(
      () => _i34.CategoryBloc(usecase: get<_i22.GetCategoriesUsecase>()));
  return get;
}

class _$RegisterModule extends _i35.RegisterModule {}
