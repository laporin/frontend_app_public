import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend_app_public/features/authentication/presentation/bloc/authentication_bloc.dart';
import 'package:frontend_app_public/model/report_model.dart';
import 'package:frontend_app_public/model/report_status_enum.dart';
import 'package:frontend_app_public/routes/routes.gr.dart';

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
            // CircleAvatar(
            //   backgroundColor: Colors.blue.shade800,
            //   child: Text('AI'),
            // ),
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
                    child: Text(
                      'Login',
                    ),
                  );
                } else if (state is AuthenticatedState) {
                  return CircleAvatar(
                    backgroundColor: Colors.blue.shade800,
                    child: Text('AI'),
                  );
                } else if (state is AuthenticationInitialState) {
                  return Text('init');
                } else if (state is ErrorAuthenticatedState) {
                  return Text('error');
                } else {
                  return Text('else');
                }
              },
            )
          ],
        ),
      ),
      body: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: entries.length,
          itemBuilder: (BuildContext context, int index) {
            final report = entries[index];

            return ListTile(
              key: Key(report.id.toString()),
              leading: CircleAvatar(
                backgroundColor:
                    report.status == ReportStatusEnum.completed.index
                        ? Colors.green
                        : Colors.grey,
              ),
              title: Text(report.detail),
              subtitle: Text(report.categoryModel.name),
              isThreeLine: true,
              onTap: () {
                print('clicked');
              },
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.router.navigate(NewReportScreenRoute());
        },
        tooltip: 'Tambah laporan',
        child: Icon(Icons.add),
      ),
    );
  }
}
