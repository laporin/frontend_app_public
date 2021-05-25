part of 'report_bloc.dart';

abstract class ReportEvent extends Equatable {
  const ReportEvent();
}

class GetReportsEvent extends ReportEvent {
  @override
  List<Object?> get props => [];
}

class GetReportEvent extends ReportEvent {
  final int id;

  GetReportEvent({required this.id});

  @override
  List<Object?> get props => [id];
}

class PostReportEvent extends ReportEvent {
  final ReportRequestModel data;

  PostReportEvent({required this.data});

  @override
  List<Object?> get props => [data];
}
