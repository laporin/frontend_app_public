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
import '../features/report/presentation/pages/report_screen.dart' as _i6;
import '../screen/home/home_screen.dart' as _i3;
import '../screen/initial_screen.dart' as _i4;
import '../screen/report/new_report_screen.dart' as _i5;

class AppRouter extends _i1.RootStackRouter {
  AppRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    HomeScreenRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i3.HomeScreen();
        }),
    InitialScreenRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i4.InitialScreen();
        }),
    NewReportScreenRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i5.NewReportScreen();
        }),
    ReportScreenRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<ReportScreenRouteArgs>();
          return _i6.ReportScreen(key: args.key, id: args.id);
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
        _i1.RouteConfig(HomeScreenRoute.name, path: '/'),
        _i1.RouteConfig(InitialScreenRoute.name, path: '/initial-screen'),
        _i1.RouteConfig(NewReportScreenRoute.name, path: '/new-report-screen'),
        _i1.RouteConfig(ReportScreenRoute.name, path: '/report-screen'),
        _i1.RouteConfig(LoginScreenRoute.name, path: '/login-screen'),
        _i1.RouteConfig(RegisterScreenRoute.name, path: '/register-screen')
      ];
}

class HomeScreenRoute extends _i1.PageRouteInfo {
  const HomeScreenRoute() : super(name, path: '/');

  static const String name = 'HomeScreenRoute';
}

class InitialScreenRoute extends _i1.PageRouteInfo {
  const InitialScreenRoute() : super(name, path: '/initial-screen');

  static const String name = 'InitialScreenRoute';
}

class NewReportScreenRoute extends _i1.PageRouteInfo {
  const NewReportScreenRoute() : super(name, path: '/new-report-screen');

  static const String name = 'NewReportScreenRoute';
}

class ReportScreenRoute extends _i1.PageRouteInfo<ReportScreenRouteArgs> {
  ReportScreenRoute({_i2.Key? key, required int id})
      : super(name,
            path: '/report-screen',
            args: ReportScreenRouteArgs(key: key, id: id));

  static const String name = 'ReportScreenRoute';
}

class ReportScreenRouteArgs {
  const ReportScreenRouteArgs({this.key, required this.id});

  final _i2.Key? key;

  final int id;
}

class LoginScreenRoute extends _i1.PageRouteInfo {
  const LoginScreenRoute() : super(name, path: '/login-screen');

  static const String name = 'LoginScreenRoute';
}

class RegisterScreenRoute extends _i1.PageRouteInfo {
  const RegisterScreenRoute() : super(name, path: '/register-screen');

  static const String name = 'RegisterScreenRoute';
}
