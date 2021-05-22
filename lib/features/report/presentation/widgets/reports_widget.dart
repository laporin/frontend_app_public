import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend_app_public/di/injection.dart';
import 'package:frontend_app_public/features/report/presentation/bloc/report_bloc.dart';

class ReportsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ReportBloc>()..add(GetReportsEvent()) ,
      child: BlocBuilder<ReportBloc, ReportState>(
        builder: (context, state) {
          if (state is ReportInitialState) {
            return Text('init');
          } else if (state is ReportLoadingState) {
            return Text('Loading...');
          } else if (state is ReportsLoadedState) {
            final entries = state.reportsResponseModel.reportDataModel;

            return ListView.builder(
              padding: const EdgeInsets.all(8),
              itemCount: entries.length,
              itemBuilder: (BuildContext context, int index) {
                final report = entries[index];

                return ListTile(
                  key: Key(report.id.toString()),
                  leading: CircleAvatar(backgroundColor: Colors.green),
                  title: Text(report.detail),
                  subtitle: Text(report.reportCategoryModel.name),
                  isThreeLine: true,
                  onTap: () {
                    print('clicked');
                  },
                );
              },
            );
          } else if (state is ReportErrorState) {
            return Text('Error');
          } else {
            return Text('Something went wrong');
          }
        },
      ),
    );
  }
}
