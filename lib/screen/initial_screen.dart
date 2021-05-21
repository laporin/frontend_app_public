import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend_app_public/features/authentication/presentation/bloc/authentication_bloc.dart';

class InitialScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthenticationBloc>(
          create: (BuildContext context) => AuthenticationBloc()..emit(),
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
          child: Text('initial'),
        ),
      ),
    );
  }
}
