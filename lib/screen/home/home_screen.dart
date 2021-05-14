import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
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
            CircleAvatar(
              backgroundColor: Colors.blue.shade800,
              child: Text('AI'),
            ),
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
          context.router.push(NewReportScreenRoute());
        },
        tooltip: 'Tambah laporan',
        child: Icon(Icons.add),
      ),
    );
  }
}
