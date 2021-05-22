import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:frontend_app_public/core/usecases/usecase.dart';
import 'package:frontend_app_public/features/report/data/models/report_response_model.dart';
import 'package:frontend_app_public/features/report/data/models/reports_response_model.dart';
import 'package:frontend_app_public/features/report/domain/usecases/get_report_usecase.dart';
import 'package:frontend_app_public/features/report/domain/usecases/get_reports_usecase.dart';

part 'report_event.dart';
part 'report_state.dart';

class ReportBloc extends Bloc<ReportEvent, ReportState> {
  final GetReportsUsecase reportsUsecase;
  final GetReportUsecase reportUsecase;

  ReportBloc({
    required this.reportsUsecase,
    required this.reportUsecase,
  }) : super(ReportInitialState());

  @override
  Stream<ReportState> mapEventToState(
    ReportEvent event,
  ) async* {
    if (event is GetReportsEvent) {
      yield ReportLoadingState();

      final responseOrError = await reportsUsecase(NoParams());
      yield responseOrError.fold(
        (left) => ReportErrorState(message: 'Something went wrong'),
        (right) => ReportsLoadedState(reportsResponseModel: right),
      );
    } else if (event is GetReportEvent) {
      yield ReportLoadingState();

      final responseOrError = await reportUsecase(event.id);
      yield responseOrError.fold(
        (left) => ReportErrorState(message: 'Something went wrong'),
        (right) => ReportLoadedState(reportResponseModel: right),
      );
    } else {
      yield ReportErrorState(message: 'Something went wrong.');
    }
  }
}
