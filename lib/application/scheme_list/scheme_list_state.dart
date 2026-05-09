part of 'scheme_list_bloc.dart';

@freezed
class SchemeListState with _$SchemeListState {
  const factory SchemeListState({
    required bool isLoading,
    required bool isFetchingDetails,
    required String searchKey,
    required List<Scheme> schemes,
    required List<Scheme> filteredSchemes,
    required SchemeDetails schemeDetails,
    required Option<Either<ApiFailure, dynamic>> schemesFailureOrSuccessOption,
  }) = _SchemeListState;

  factory SchemeListState.initial() => SchemeListState(
    isLoading: false,
    isFetchingDetails: false,
    schemes: [],
    searchKey: '',
    filteredSchemes: [],
    schemeDetails: SchemeDetails.empty(),
    schemesFailureOrSuccessOption: none(),
  );
}
