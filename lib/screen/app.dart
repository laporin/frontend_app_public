import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend_app_public/config/di/injection.dart';
import 'package:frontend_app_public/config/routes/routes.gr.dart';
import 'package:frontend_app_public/features/authentication/presentation/bloc/authentication_bloc.dart';
import 'package:frontend_app_public/features/report/presentation/report_bloc/report_bloc.dart';
import 'package:frontend_app_public/features/report/presentation/similarity_report_bloc/similarity_report_bloc_bloc.dart';

final appRouter = AppRouter();

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<AuthenticationBloc>()
            ..add(
              AuthenticationCheckEvent(),
            ),
        ),
        BlocProvider(
          create: (context) => getIt<ReportBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<SimilarityReportBlocBloc>(),
        ),
      ],
      child: MaterialApp.router(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        routerDelegate: appRouter.delegate(),
        routeInformationParser: appRouter.defaultRouteParser(),
      ),
    );
  }
}
