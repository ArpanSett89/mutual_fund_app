import 'package:freezed_annotation/freezed_annotation.dart';

part 'scheme_details.freezed.dart';

@freezed
class SchemeDetails with _$SchemeDetails {
  const SchemeDetails._();

  const factory SchemeDetails({
    required SchemeMeta meta,
    required List<SchemeNavHistory> navHistory,
    required String status,
  }) = _SchemeDetails;

  factory SchemeDetails.empty() => const SchemeDetails(
    meta: SchemeMeta(
      fundHouse: '',
      schemeType: '',
      schemeCategory: '',
      schemeCode: 0,
      schemeName: '',
      isinGrowth: '',
      isinDivReinvestment: '',
    ),
    navHistory: [],
    status: '',
  );
}

@freezed
class SchemeMeta with _$SchemeMeta {
  const SchemeMeta._();

  const factory SchemeMeta({
    required String fundHouse,
    required String schemeType,
    required String schemeCategory,
    required int schemeCode,
    required String schemeName,
    required String isinGrowth,
    required String isinDivReinvestment,
  }) = _SchemeMeta;

  factory SchemeMeta.empty() => const SchemeMeta(
    fundHouse: '',
    schemeType: '',
    schemeCategory: '',
    schemeCode: 0,
    schemeName: '',
    isinGrowth: '',
    isinDivReinvestment: '',
  );
}

@freezed
class SchemeNavHistory with _$SchemeNavHistory {
  const SchemeNavHistory._();

  const factory SchemeNavHistory({required String date, required String nav}) =
      _SchemeNavHistory;

  factory SchemeNavHistory.empty() => const SchemeNavHistory(date: '', nav: '');
}
