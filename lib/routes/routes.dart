import 'package:auto_route/auto_route.dart';
import 'package:frontend_app_public/features/authentication/presentation/screens/login_screen.dart';
import 'package:frontend_app_public/features/authentication/presentation/screens/register_screen.dart';
import 'package:frontend_app_public/screen/home/home_screen.dart';
import 'package:frontend_app_public/screen/initial_screen.dart';
import 'package:frontend_app_public/screen/report/detail_report_screen.dart';
import 'package:frontend_app_public/screen/report/new_report_screen.dart';

@MaterialAutoRouter(routes: <AutoRoute>[
  // replaceInRouteName: 'Page,Route',
  AutoRoute(page: HomeScreen, initial: true),
  AutoRoute(page: InitialScreen),
  AutoRoute(page: NewReportScreen),
  AutoRoute(page: DetailReportScreen),
  AutoRoute(page: LoginScreen),
  AutoRoute(page: RegisterScreen),
])
class $AppRouter {}
