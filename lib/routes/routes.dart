import 'package:auto_route/auto_route.dart';
import 'package:frontend_app_public/screen/auth/login_screen.dart';
import 'package:frontend_app_public/screen/auth/register_screen.dart';
import 'package:frontend_app_public/screen/home/home_screen.dart';
import 'package:frontend_app_public/screen/report/detail_report_screen.dart';
import 'package:frontend_app_public/screen/report/new_report_screen.dart';

@MaterialAutoRouter(routes: <AutoRoute>[
  // replaceInRouteName: 'Page,Route',
  AutoRoute(page: HomeScreen, initial: true),
  AutoRoute(page: NewReportScreen),
  AutoRoute(page: DetailReportScreen),
  AutoRoute(page: LoginScreen),
  AutoRoute(page: RegisterScreen),
])
class $AppRouter {}
