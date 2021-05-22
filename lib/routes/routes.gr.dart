// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import '../features/authentication/presentation/screens/login_screen.dart'
    as _i7;
import '../features/authentication/presentation/screens/register_screen.dart'
    as _i8;
import '../screen/home/home_screen.dart' as _i4;
import '../screen/initial_screen.dart' as _i3;
import '../screen/report/detail_report_screen.dart' as _i6;
import '../screen/report/new_report_screen.dart' as _i5;

class AppRouter extends _i1.RootStackRouter {
  AppRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    InitialScreenRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i3.InitialScreen();
        }),
    HomeScreenRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i4.HomeScreen();
        }),
    NewReportScreenRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i5.NewReportScreen();
        }),
    DetailReportScreenRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i6.DetailReportScreen();
        }),
    LoginScreenRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i7.LoginScreen();
        }),
    RegisterScreenRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i8.RegisterScreen();
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(InitialScreenRoute.name, path: '/'),
        _i1.RouteConfig(HomeScreenRoute.name, path: '/home-screen'),
        _i1.RouteConfig(NewReportScreenRoute.name, path: '/new-report-screen'),
        _i1.RouteConfig(DetailReportScreenRoute.name,
            path: '/detail-report-screen'),
        _i1.RouteConfig(LoginScreenRoute.name, path: '/login-screen'),
        _i1.RouteConfig(RegisterScreenRoute.name, path: '/register-screen')
      ];
}

class InitialScreenRoute extends _i1.PageRouteInfo {
  const InitialScreenRoute() : super(name, path: '/');

  static const String name = 'InitialScreenRoute';
}

class HomeScreenRoute extends _i1.PageRouteInfo {
  const HomeScreenRoute() : super(name, path: '/home-screen');

  static const String name = 'HomeScreenRoute';
}

class NewReportScreenRoute extends _i1.PageRouteInfo {
  const NewReportScreenRoute() : super(name, path: '/new-report-screen');

  static const String name = 'NewReportScreenRoute';
}

class DetailReportScreenRoute extends _i1.PageRouteInfo {
  const DetailReportScreenRoute() : super(name, path: '/detail-report-screen');

  static const String name = 'DetailReportScreenRoute';
}

class LoginScreenRoute extends _i1.PageRouteInfo {
  const LoginScreenRoute() : super(name, path: '/login-screen');

  static const String name = 'LoginScreenRoute';
}

class RegisterScreenRoute extends _i1.PageRouteInfo {
  const RegisterScreenRoute() : super(name, path: '/register-screen');

  static const String name = 'RegisterScreenRoute';
}
