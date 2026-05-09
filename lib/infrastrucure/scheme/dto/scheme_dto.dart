import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mutual_fund_app/domain/scheme/entitis/scheme.dart';

part 'scheme_dto.freezed.dart';
part 'scheme_dto.g.dart';

@freezed
class SchemeDto with _$SchemeDto {
  const SchemeDto._();

  const factory SchemeDto({
    @JsonKey(name: 'schemeCode', defaultValue: 0) required int schemeCode,

    @JsonKey(name: 'schemeName', defaultValue: '') required String schemeName,

    @JsonKey(name: 'isinGrowth', defaultValue: '') required String isinGrowth,

    @JsonKey(name: 'isinDivReinvestment', defaultValue: '')
    required String isinDivReinvestment,
  }) = _SchemeDto;

  factory SchemeDto.fromDomain(Scheme scheme) {
    return SchemeDto(
      schemeCode: scheme.schemeCode,
      schemeName: scheme.schemeName,
      isinGrowth: scheme.isinGrowth,
      isinDivReinvestment: scheme.isinDivReinvestment,
    );
  }

  Scheme toDomain() {
    return Scheme(
      schemeCode: schemeCode,
      schemeName: schemeName,
      isinGrowth: isinGrowth,
      isinDivReinvestment: isinDivReinvestment,
    );
  }

  static const empty = SchemeDto(
    schemeCode: 0,
    schemeName: '',
    isinGrowth: '',
    isinDivReinvestment: '',
  );

  factory SchemeDto.fromJson(Map<String, dynamic> json) =>
      _$SchemeDtoFromJson(json);
}
