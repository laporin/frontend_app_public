part of 'similarity_report_bloc_bloc.dart';

@freezed
class SimilarityReportBlocState with _$SimilarityReportBlocState {
  const factory SimilarityReportBlocState.initial() = _Initial;
  const factory SimilarityReportBlocState.loading() = _Loading;
  const factory SimilarityReportBlocState.error(String message) = _Error;
  const factory SimilarityReportBlocState.loaded(ReportsResponseModel data) =
      _Loaded;
}
