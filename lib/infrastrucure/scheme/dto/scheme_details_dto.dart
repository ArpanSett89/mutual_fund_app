import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mutual_fund_app/domain/scheme/entitis/scheme_details.dart';

part 'scheme_details_dto.freezed.dart';
part 'scheme_details_dto.g.dart';

@freezed
class SchemeDetailsDto with _$SchemeDetailsDto {
  const SchemeDetailsDto._();

  const factory SchemeDetailsDto({
    @Default(SchemeMetaDto.empty) @JsonKey(name: 'meta') SchemeMetaDto meta,
    @JsonKey(name: 'data', defaultValue: [])
    required List<SchemeNavHistoryDto> navHistory,
    @JsonKey(name: 'status', defaultValue: '') required String status,
  }) = _SchemeDetailsDto;

  factory SchemeDetailsDto.fromJson(Map<String, dynamic> json) =>
      _$SchemeDetailsDtoFromJson(json);

  SchemeDetails toDomain() {
    return SchemeDetails(
      meta: meta.toDomain(),
      navHistory: navHistory.map((e) => e.toDomain()).toList(),
      status: status,
    );
  }
}

@freezed
class SchemeMetaDto with _$SchemeMetaDto {
  const SchemeMetaDto._();

  const factory SchemeMetaDto({
    @JsonKey(name: 'fund_house', defaultValue: '') required String fundHouse,
    @JsonKey(name: 'scheme_type', defaultValue: '') required String schemeType,
    @JsonKey(name: 'scheme_category', defaultValue: '')
    required String schemeCategory,
    @JsonKey(name: 'scheme_code', defaultValue: 0) required int schemeCode,
    @JsonKey(name: 'scheme_name', defaultValue: '') required String schemeName,
    @JsonKey(name: 'isin_growth', defaultValue: '') required String isinGrowth,
    @JsonKey(name: 'isin_div_reinvestment', defaultValue: '')
    required String isinDivReinvestment,
  }) = _SchemeMetaDto;

  factory SchemeMetaDto.fromJson(Map<String, dynamic> json) =>
      _$SchemeMetaDtoFromJson(json);

  SchemeMeta toDomain() {
    return SchemeMeta(
      fundHouse: fundHouse,
      schemeType: schemeType,
      schemeCategory: schemeCategory,
      schemeCode: schemeCode,
      schemeName: schemeName,
      isinGrowth: isinGrowth,
      isinDivReinvestment: isinDivReinvestment,
    );
  }

  static const empty = SchemeMetaDto(
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
class SchemeNavHistoryDto with _$SchemeNavHistoryDto {
  const SchemeNavHistoryDto._();

  const factory SchemeNavHistoryDto({
    @JsonKey(name: 'date', defaultValue: '') required String date,
    @JsonKey(name: 'nav', defaultValue: '') required String nav,
  }) = _SchemeNavHistoryDto;

  factory SchemeNavHistoryDto.fromJson(Map<String, dynamic> json) =>
      _$SchemeNavHistoryDtoFromJson(json);

  SchemeNavHistory toDomain() {
    return SchemeNavHistory(date: date, nav: nav);
  }
}
