import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend_app_public/config/di/injection.dart';
import 'package:frontend_app_public/features/report/presentation/bloc/report_bloc.dart';
import 'package:frontend_app_public/config/routes/routes.gr.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class ReportsWidget extends StatefulWidget {
  @override
  _ReportsWidgetState createState() => _ReportsWidgetState();
}

class _ReportsWidgetState extends State<ReportsWidget> {
  RefreshController _refreshController =
      RefreshController(initialRefresh: false);

  void _onRefresh() async {
    // monitor network fetch
    await Future.delayed(Duration(milliseconds: 1000));
    // if failed,use refreshFailed()
    _refreshController.refreshCompleted();
  }

  void _onLoading() async {
    // monitor network fetch
    // await Future.delayed(Duration(milliseconds: 1000));
    BlocProvider.of<ReportBloc>(context)..add(GetReportsEvent());

    // if failed,use loadFailed(),if no data return,use LoadNodata()
    // items.add((items.length + 1).toString());
    if (mounted) setState(() {});
    _refreshController.loadComplete();
  }

  @override
  Widget build(BuildContext context) {
    return SmartRefresher(
      enablePullDown: true,
      enablePullUp: true,
      header: WaterDropHeader(),
      controller: _refreshController,
      onRefresh: _onRefresh,
      onLoading: _onLoading,
      footer: CustomFooter(
        builder: (BuildContext context, LoadStatus? mode) {
          Widget body;
          if (mode == LoadStatus.idle) {
            body = Text("pull up load");
          } else if (mode == LoadStatus.loading) {
            body = CircularProgressIndicator();
          } else if (mode == LoadStatus.failed) {
            body = Text("Load Failed!Click retry!");
          } else if (mode == LoadStatus.canLoading) {
            body = Text("release to load more");
          } else {
            body = Text("No more Data");
          }
          return Container(
            height: 55.0,
            child: Center(child: body),
          );
        },
      ),
      child: BlocProvider(
        create: (context) => getIt<ReportBloc>()..add(GetReportsEvent()),
        child: BlocBuilder<ReportBloc, ReportState>(
          builder: (context, state) {
            if (state is ReportInitialState) {
              return Text('init.');
            } else if (state is ReportLoadingState) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else if (state is ReportsLoadedState) {
              final entries = state.reportsResponseModel.data;

              return ListView.builder(
                physics: BouncingScrollPhysics(),
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
                      context.router.navigate(ReportScreenRoute(id: report.id));
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
      ),
    );
  }
}
