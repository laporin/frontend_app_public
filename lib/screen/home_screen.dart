import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend_app_public/config/routes/routes.gr.dart';
import 'package:frontend_app_public/features/authentication/presentation/bloc/authentication_bloc.dart';
import 'package:frontend_app_public/features/report/presentation/widgets/reports_widget.dart';
import 'package:frontend_app_public/model/report_model.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final entries = ReportModel.all();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Laporin',
              style: TextStyle(fontWeight: FontWeight.w700),
            ),
            BlocBuilder<AuthenticationBloc, AuthenticationState>(
              builder: (context, state) {
                if (state is UnauthenticatedState) {
                  return ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.blue),
                    ),
                    onPressed: () {
                      context.router.navigate(LoginScreenRoute());
                    },
                    child: Text('Masuk / Daftar'),
                  );
                } else if (state is AuthenticationLoadingState) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                } else if (state is AuthenticatedState) {
                  return InkWell(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            content: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.of(context, rootNavigator: true)
                                        .pop();
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text('Fitur segera datang!'),
                                      ),
                                    );
                                  },
                                  child: Text('Lihat daftar laporan saya'),
                                ),
                                ElevatedButton(
                                  style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                      Colors.red,
                                    ),
                                  ),
                                  onPressed: () {
                                    BlocProvider.of<AuthenticationBloc>(context)
                                        .add(LogoutEvent());
                                    Navigator.of(context, rootNavigator: true)
                                        .pop();
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content:
                                            Text('Sukses keluar dari aplikasi'),
                                      ),
                                    );
                                  },
                                  child: Text('Keluar aplikasi'),
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    },
                    child: CircleAvatar(
                      backgroundColor: Colors.blue.shade800,
                      child: Icon(Icons.account_circle),
                    ),
                  );
                } else if (state is AuthenticationInitialState) {
                  return Text('init');
                } else if (state is ErrorAuthenticatedState) {
                  return Text('error');
                } else {
                  return Container();
                }
              },
            )
          ],
        ),
      ),
      body: ReportsWidget(),
      floatingActionButton:
          BlocBuilder<AuthenticationBloc, AuthenticationState>(
        builder: (context, state) {
          if (state is AuthenticatedState) {
            return FloatingActionButton(
              onPressed: () {
                context.router.navigate(NewReportScreenRoute());
              },
              tooltip: 'Tambah laporan',
              child: Icon(Icons.add),
            );
          } else {
            return FloatingActionButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      'Mohon masuk atau daftar dahulu untuk membuat laporan.',
                    ),
                  ),
                );
                print('apa ya');
              },
              child: Icon(Icons.account_balance),
            );
          }
        },
      ),
    );
  }
}
