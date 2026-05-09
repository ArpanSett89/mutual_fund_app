// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scheme_details_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SchemeDetailsDtoImpl _$$SchemeDetailsDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$SchemeDetailsDtoImpl(
      meta: json['meta'] == null
          ? SchemeMetaDto.empty
          : SchemeMetaDto.fromJson(json['meta'] as Map<String, dynamic>),
      navHistory: (json['data'] as List<dynamic>?)
              ?.map((e) =>
                  SchemeNavHistoryDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      status: json['status'] as String? ?? '',
    );

Map<String, dynamic> _$$SchemeDetailsDtoImplToJson(
        _$SchemeDetailsDtoImpl instance) =>
    <String, dynamic>{
      'meta': instance.meta,
      'data': instance.navHistory,
      'status': instance.status,
    };

_$SchemeMetaDtoImpl _$$SchemeMetaDtoImplFromJson(Map<String, dynamic> json) =>
    _$SchemeMetaDtoImpl(
      fundHouse: json['fund_house'] as String? ?? '',
      schemeType: json['scheme_type'] as String? ?? '',
      schemeCategory: json['scheme_category'] as String? ?? '',
      schemeCode: (json['scheme_code'] as num?)?.toInt() ?? 0,
      schemeName: json['scheme_name'] as String? ?? '',
      isinGrowth: json['isin_growth'] as String? ?? '',
      isinDivReinvestment: json['isin_div_reinvestment'] as String? ?? '',
    );

Map<String, dynamic> _$$SchemeMetaDtoImplToJson(_$SchemeMetaDtoImpl instance) =>
    <String, dynamic>{
      'fund_house': instance.fundHouse,
      'scheme_type': instance.schemeType,
      'scheme_category': instance.schemeCategory,
      'scheme_code': instance.schemeCode,
      'scheme_name': instance.schemeName,
      'isin_growth': instance.isinGrowth,
      'isin_div_reinvestment': instance.isinDivReinvestment,
    };

_$SchemeNavHistoryDtoImpl _$$SchemeNavHistoryDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$SchemeNavHistoryDtoImpl(
      date: json['date'] as String? ?? '',
      nav: json['nav'] as String? ?? '',
    );

Map<String, dynamic> _$$SchemeNavHistoryDtoImplToJson(
        _$SchemeNavHistoryDtoImpl instance) =>
    <String, dynamic>{
      'date': instance.date,
      'nav': instance.nav,
    };
