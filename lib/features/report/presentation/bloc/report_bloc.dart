import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:frontend_app_public/core/usecases/usecase.dart';
import 'package:frontend_app_public/features/report/data/models/create_report_request_model.dart';
import 'package:frontend_app_public/features/report/data/models/report_response_model.dart';
import 'package:frontend_app_public/features/report/data/models/reports_response_model.dart';
import 'package:frontend_app_public/features/report/domain/usecases/get_report_usecase.dart';
import 'package:frontend_app_public/features/report/domain/usecases/get_reports_usecase.dart';
import 'package:frontend_app_public/features/report/domain/usecases/post_report_usecase.dart';
import 'package:injectable/injectable.dart';

part 'report_event.dart';
part 'report_state.dart';

@injectable
class ReportBloc extends Bloc<ReportEvent, ReportState> {
  final GetReportsUsecase reportsUsecase;
  final GetReportUsecase reportUsecase;
  final CreateReportUsecase createReportUsecase;

  ReportBloc({
    required this.reportsUsecase,
    required this.reportUsecase,
    required this.createReportUsecase,
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
        (right) => ReportLoadedState(data: right),
      );
    } else if (event is CreateReportEvent) {
      yield ReportLoadingState();

      final responseOrError = await createReportUsecase(event.data);
      yield responseOrError.fold(
        (left) => ReportErrorState(message: 'Something went wrong'),
        (right) => CreatedReportState(),
      );
    } else {
      yield ReportErrorState(message: 'Something went wrong.');
    }
  }
}
