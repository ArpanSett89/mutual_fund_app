part of 'scheme_list_bloc.dart';

@freezed
class SchemeListEvent with _$SchemeListEvent {
  const factory SchemeListEvent.fetchSchemeList() = _FetchSchemeList;
  const factory SchemeListEvent.searchSchemeList({required String query}) =
      _SearchSchemeList;
  const factory SchemeListEvent.clearSearchSchemeList() =
      _ClearSearchSchemeList;
  const factory SchemeListEvent.fetchSchemeDetails({required String schemeId}) =
      _FetchSchemeDetails;
}
