import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend_app_public/di/injection.dart';
import 'package:frontend_app_public/features/report/presentation/bloc/report_bloc.dart';

class ReportsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ReportBloc>()..add(GetReportsEvent()),
      child: BlocBuilder<ReportBloc, ReportState>(
        builder: (context, state) {
          if (state is ReportInitialState) {
            return Text('init.');
          } else if (state is ReportLoadingState) {
            return Text('Loading...');
          } else if (state is ReportsLoadedState) {
            final entries = state.reportsResponseModel.data;

            return ListView.builder(
              padding: const EdgeInsets.all(8),
              itemCount: entries.length,
              itemBuilder: (BuildContext context, int index) {
                final report = entries[index];
                final title =
                    "${report.category.name} - ${report.subdistrict}, ${report.city}.";

                return ListTile(
                  key: Key(report.id.toString()),
                  leading: CircleAvatar(backgroundColor: Colors.blue),
                  title: Text(title),
                  subtitle: Text(
                    report.detail,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
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
