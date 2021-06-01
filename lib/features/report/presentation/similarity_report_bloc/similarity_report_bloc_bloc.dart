import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend_app_public/features/report/data/models/report_similarity_request_model.dart';
import 'package:frontend_app_public/features/report/data/models/reports_response_model.dart';
import 'package:frontend_app_public/features/report/domain/usecases/post_report_similarity_usercase.dart';
import 'package:injectable/injectable.dart';

part 'similarity_report_bloc_event.dart';
part 'similarity_report_bloc_state.dart';
part 'similarity_report_bloc_bloc.freezed.dart';

@injectable
class SimilarityReportBlocBloc
    extends Bloc<SimilarityReportBlocEvent, SimilarityReportBlocState> {
  final PostReportSimilarityUsecase reportSimilarityUsecase;

  SimilarityReportBlocBloc(this.reportSimilarityUsecase) : super(_Initial());

  @override
  Stream<SimilarityReportBlocState> mapEventToState(
    SimilarityReportBlocEvent event,
  ) async* {
    yield* event.map(
      started: (state) async* {},
      postSimilarity: (event) async* {
        yield SimilarityReportBlocState.loading();

        final body = ReportSimilarityRequestModel(detail: event.detail);
        final responseOrError = await reportSimilarityUsecase(body);
        yield responseOrError.fold(
          (left) => SimilarityReportBlocState.error('Something went wrong'),
          (right) => SimilarityReportBlocState.loaded(right),
        );
      },
    );
  }
}
