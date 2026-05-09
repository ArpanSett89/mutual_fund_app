// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scheme_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SchemeDtoImpl _$$SchemeDtoImplFromJson(Map<String, dynamic> json) =>
    _$SchemeDtoImpl(
      schemeCode: (json['schemeCode'] as num?)?.toInt() ?? 0,
      schemeName: json['schemeName'] as String? ?? '',
      isinGrowth: json['isinGrowth'] as String? ?? '',
      isinDivReinvestment: json['isinDivReinvestment'] as String? ?? '',
    );

Map<String, dynamic> _$$SchemeDtoImplToJson(_$SchemeDtoImpl instance) =>
    <String, dynamic>{
      'schemeCode': instance.schemeCode,
      'schemeName': instance.schemeName,
      'isinGrowth': instance.isinGrowth,
      'isinDivReinvestment': instance.isinDivReinvestment,
    };
