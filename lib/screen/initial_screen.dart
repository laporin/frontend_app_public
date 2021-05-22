import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend_app_public/di/injection.dart';
import 'package:frontend_app_public/features/authentication/presentation/bloc/authentication_bloc.dart';

class InitialScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthenticationBloc>(
          create: (BuildContext context) => getIt<AuthenticationBloc>()..add(AuthenticationCheckEvent()) ,
        ),
      ],
      child: Container(
        child: BlocListener<AuthenticationBloc, AuthenticationState>(
          listener: (context, state) {
            if (state is AuthenticatedState) {
              print('authenticated');
            } else if (state is UnauthenticatedState) {
              print('unauthenticated');
            } else {
              print("what's going on?");
            }
          },
          child: Scaffold(
            appBar: AppBar(),
            body: BlocBuilder<AuthenticationBloc, AuthenticationState>(
              builder: (context, state) {
                if (state is UnauthenticatedState) {
                  return Text('unauthenticated');
                } else if (state is AuthenticatedState) {
                  return Text('authenticated');
                } else if (state is AuthenticationInitialState) {
                  // context.bloc<AuthenticationBloc>();
                  return Text('init');
                } else if (state is ErrorAuthenticatedState) {
                  return Text('error');
                } else {
                  return Text('else');
                }
              },
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                BlocProvider.of<AuthenticationBloc>(context)
                    .add(AuthenticationCheckEvent());
                // context.bloc();
              },
            ),
          ),
        ),
      ),
    );
  }
}
