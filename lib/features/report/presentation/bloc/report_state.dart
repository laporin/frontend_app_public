part of 'report_bloc.dart';

abstract class ReportState extends Equatable {
  const ReportState();
}

class ReportInitialState extends ReportState {
  @override
  List<Object> get props => [];
}

class ReportLoadingState extends ReportState {
  @override
  List<Object?> get props => [];
}

class ReportsLoadedState extends ReportState {
  final ReportsResponseModel reportsResponseModel;

  ReportsLoadedState({required this.reportsResponseModel});

  @override
  List<Object?> get props => [reportsResponseModel];
}

class ReportLoadedState extends ReportState {
  final ReportResponseModel data;

  ReportLoadedState({required this.data});

  @override
  List<Object?> get props => [data];
}

class ReportErrorState extends ReportState {
  final String message;

  ReportErrorState({required this.message});

  @override
  List<Object?> get props => [message];
}

class CreatedReportState extends ReportState {
  @override
  List<Object?> get props => [];
}
