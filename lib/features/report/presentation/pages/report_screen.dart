import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend_app_public/di/injection.dart';
import 'package:frontend_app_public/features/report/data/models/report_data_model.dart';
import 'package:frontend_app_public/features/report/presentation/bloc/report_bloc.dart';

class ReportScreen extends StatelessWidget {
  final int id;

  const ReportScreen({
    Key? key,
    required this.id,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ReportBloc>()..add(GetReportEvent(id: id)),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Detail Laporan',
            style: TextStyle(fontWeight: FontWeight.w700),
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(16),
            child: BlocBuilder<ReportBloc, ReportState>(
              builder: (context, state) {
                if (state is ReportLoadedState) {
                  final ReportDataModel report = state.data.data;

                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Flexible(
                            flex: 3,
                            child: Container(
                              height: 150,
                              color: Colors.blue,
                            ),
                          ),
                          Flexible(
                            child: Column(
                              children: [
                                Container(
                                  height: 50,
                                  color: Colors.green,
                                ),
                                Container(
                                  height: 50,
                                  color: Colors.red,
                                ),
                                Container(
                                  height: 50,
                                  color: Colors.yellow,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15),
                      Text(
                        'Deskripsi Laporan',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Colors.grey.shade700,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(report.detail),
                      SizedBox(height: 15),
                      Text(
                        'Kategori',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Colors.grey.shade700,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(report.category.name),
                      SizedBox(height: 15),
                      Text(
                        'Kecamatan',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Colors.grey.shade700,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(report.subdistrict),
                      SizedBox(height: 15),
                      Text(
                        'Kabupaten / Kota',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Colors.grey.shade700,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(report.city),
                      SizedBox(height: 15),
                      Text(
                        'Alamat',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Colors.grey.shade700,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(report.address),
                      SizedBox(height: 15),
                    ],
                  );
                } else if (state is ReportLoadingState) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                } else {
                  return Text('Something went wrong');
                }
              },
            ),
          ),
        ),
      ),
    );
  }
}
