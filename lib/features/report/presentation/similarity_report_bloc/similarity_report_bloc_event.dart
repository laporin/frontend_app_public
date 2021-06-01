part of 'similarity_report_bloc_bloc.dart';

@freezed
class SimilarityReportBlocEvent with _$SimilarityReportBlocEvent {
  const factory SimilarityReportBlocEvent.started() = _Started;
  const factory SimilarityReportBlocEvent.postSimilarity(String detail) =
      _PostSimilarity;
}
