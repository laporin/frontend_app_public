import 'package:auto_route/auto_route.dart';
import 'package:frontend_app_public/features/authentication/presentation/screens/login_screen.dart';
import 'package:frontend_app_public/features/authentication/presentation/screens/register_screen.dart';
import 'package:frontend_app_public/features/report/presentation/pages/full_image_screen.dart';
import 'package:frontend_app_public/features/report/presentation/pages/report_screen.dart';
import 'package:frontend_app_public/screen/home_screen.dart';
import 'package:frontend_app_public/screen/initial_screen.dart';
import 'package:frontend_app_public/features/report/presentation/pages/new_report_screen.dart';

@MaterialAutoRouter(routes: <AutoRoute>[
  // replaceInRouteName: 'Page,Route',
  AutoRoute(page: HomeScreen, initial: true),
  AutoRoute(page: InitialScreen),
  AutoRoute(page: NewReportScreen),
  AutoRoute(page: ReportScreen),
  AutoRoute(page: LoginScreen),
  AutoRoute(page: RegisterScreen),
  AutoRoute(page: FullImageScreen),
])
class $AppRouter {}
