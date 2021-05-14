import 'package:flutter/material.dart';
import 'package:frontend_app_public/routes/routes.gr.dart';

final appRouter = AppRouter();

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routerDelegate: appRouter.delegate() ,
      routeInformationParser: appRouter.defaultRouteParser(),
    );
  }
}
