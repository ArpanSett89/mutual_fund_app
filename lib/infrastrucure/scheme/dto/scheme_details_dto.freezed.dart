// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'scheme_details_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SchemeDetailsDto _$SchemeDetailsDtoFromJson(Map<String, dynamic> json) {
  return _SchemeDetailsDto.fromJson(json);
}

/// @nodoc
mixin _$SchemeDetailsDto {
  @JsonKey(name: 'meta')
  SchemeMetaDto get meta => throw _privateConstructorUsedError;
  @JsonKey(name: 'data', defaultValue: [])
  List<SchemeNavHistoryDto> get navHistory =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'status', defaultValue: '')
  String get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SchemeDetailsDtoCopyWith<SchemeDetailsDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SchemeDetailsDtoCopyWith<$Res> {
  factory $SchemeDetailsDtoCopyWith(
          SchemeDetailsDto value, $Res Function(SchemeDetailsDto) then) =
      _$SchemeDetailsDtoCopyWithImpl<$Res, SchemeDetailsDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'meta') SchemeMetaDto meta,
      @JsonKey(name: 'data', defaultValue: [])
      List<SchemeNavHistoryDto> navHistory,
      @JsonKey(name: 'status', defaultValue: '') String status});

  $SchemeMetaDtoCopyWith<$Res> get meta;
}

/// @nodoc
class _$SchemeDetailsDtoCopyWithImpl<$Res, $Val extends SchemeDetailsDto>
    implements $SchemeDetailsDtoCopyWith<$Res> {
  _$SchemeDetailsDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meta = null,
    Object? navHistory = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as SchemeMetaDto,
      navHistory: null == navHistory
          ? _value.navHistory
          : navHistory // ignore: cast_nullable_to_non_nullable
              as List<SchemeNavHistoryDto>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SchemeMetaDtoCopyWith<$Res> get meta {
    return $SchemeMetaDtoCopyWith<$Res>(_value.meta, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SchemeDetailsDtoImplCopyWith<$Res>
    implements $SchemeDetailsDtoCopyWith<$Res> {
  factory _$$SchemeDetailsDtoImplCopyWith(_$SchemeDetailsDtoImpl value,
          $Res Function(_$SchemeDetailsDtoImpl) then) =
      __$$SchemeDetailsDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'meta') SchemeMetaDto meta,
      @JsonKey(name: 'data', defaultValue: [])
      List<SchemeNavHistoryDto> navHistory,
      @JsonKey(name: 'status', defaultValue: '') String status});

  @override
  $SchemeMetaDtoCopyWith<$Res> get meta;
}

/// @nodoc
class __$$SchemeDetailsDtoImplCopyWithImpl<$Res>
    extends _$SchemeDetailsDtoCopyWithImpl<$Res, _$SchemeDetailsDtoImpl>
    implements _$$SchemeDetailsDtoImplCopyWith<$Res> {
  __$$SchemeDetailsDtoImplCopyWithImpl(_$SchemeDetailsDtoImpl _value,
      $Res Function(_$SchemeDetailsDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meta = null,
    Object? navHistory = null,
    Object? status = null,
  }) {
    return _then(_$SchemeDetailsDtoImpl(
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as SchemeMetaDto,
      navHistory: null == navHistory
          ? _value._navHistory
          : navHistory // ignore: cast_nullable_to_non_nullable
              as List<SchemeNavHistoryDto>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SchemeDetailsDtoImpl extends _SchemeDetailsDto {
  const _$SchemeDetailsDtoImpl(
      {@JsonKey(name: 'meta') this.meta = SchemeMetaDto.empty,
      @JsonKey(name: 'data', defaultValue: [])
      required final List<SchemeNavHistoryDto> navHistory,
      @JsonKey(name: 'status', defaultValue: '') required this.status})
      : _navHistory = navHistory,
        super._();

  factory _$SchemeDetailsDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$SchemeDetailsDtoImplFromJson(json);

  @override
  @JsonKey(name: 'meta')
  final SchemeMetaDto meta;
  final List<SchemeNavHistoryDto> _navHistory;
  @override
  @JsonKey(name: 'data', defaultValue: [])
  List<SchemeNavHistoryDto> get navHistory {
    if (_navHistory is EqualUnmodifiableListView) return _navHistory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_navHistory);
  }

  @override
  @JsonKey(name: 'status', defaultValue: '')
  final String status;

  @override
  String toString() {
    return 'SchemeDetailsDto(meta: $meta, navHistory: $navHistory, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SchemeDetailsDtoImpl &&
            (identical(other.meta, meta) || other.meta == meta) &&
            const DeepCollectionEquality()
                .equals(other._navHistory, _navHistory) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, meta,
      const DeepCollectionEquality().hash(_navHistory), status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SchemeDetailsDtoImplCopyWith<_$SchemeDetailsDtoImpl> get copyWith =>
      __$$SchemeDetailsDtoImplCopyWithImpl<_$SchemeDetailsDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SchemeDetailsDtoImplToJson(
      this,
    );
  }
}

abstract class _SchemeDetailsDto extends SchemeDetailsDto {
  const factory _SchemeDetailsDto(
      {@JsonKey(name: 'meta') final SchemeMetaDto meta,
      @JsonKey(name: 'data', defaultValue: [])
      required final List<SchemeNavHistoryDto> navHistory,
      @JsonKey(name: 'status', defaultValue: '')
      required final String status}) = _$SchemeDetailsDtoImpl;
  const _SchemeDetailsDto._() : super._();

  factory _SchemeDetailsDto.fromJson(Map<String, dynamic> json) =
      _$SchemeDetailsDtoImpl.fromJson;

  @override
  @JsonKey(name: 'meta')
  SchemeMetaDto get meta;
  @override
  @JsonKey(name: 'data', defaultValue: [])
  List<SchemeNavHistoryDto> get navHistory;
  @override
  @JsonKey(name: 'status', defaultValue: '')
  String get status;
  @override
  @JsonKey(ignore: true)
  _$$SchemeDetailsDtoImplCopyWith<_$SchemeDetailsDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SchemeMetaDto _$SchemeMetaDtoFromJson(Map<String, dynamic> json) {
  return _SchemeMetaDto.fromJson(json);
}

/// @nodoc
mixin _$SchemeMetaDto {
  @JsonKey(name: 'fund_house', defaultValue: '')
  String get fundHouse => throw _privateConstructorUsedError;
  @JsonKey(name: 'scheme_type', defaultValue: '')
  String get schemeType => throw _privateConstructorUsedError;
  @JsonKey(name: 'scheme_category', defaultValue: '')
  String get schemeCategory => throw _privateConstructorUsedError;
  @JsonKey(name: 'scheme_code', defaultValue: 0)
  int get schemeCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'scheme_name', defaultValue: '')
  String get schemeName => throw _privateConstructorUsedError;
  @JsonKey(name: 'isin_growth', defaultValue: '')
  String get isinGrowth => throw _privateConstructorUsedError;
  @JsonKey(name: 'isin_div_reinvestment', defaultValue: '')
  String get isinDivReinvestment => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SchemeMetaDtoCopyWith<SchemeMetaDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SchemeMetaDtoCopyWith<$Res> {
  factory $SchemeMetaDtoCopyWith(
          SchemeMetaDto value, $Res Function(SchemeMetaDto) then) =
      _$SchemeMetaDtoCopyWithImpl<$Res, SchemeMetaDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'fund_house', defaultValue: '') String fundHouse,
      @JsonKey(name: 'scheme_type', defaultValue: '') String schemeType,
      @JsonKey(name: 'scheme_category', defaultValue: '') String schemeCategory,
      @JsonKey(name: 'scheme_code', defaultValue: 0) int schemeCode,
      @JsonKey(name: 'scheme_name', defaultValue: '') String schemeName,
      @JsonKey(name: 'isin_growth', defaultValue: '') String isinGrowth,
      @JsonKey(name: 'isin_div_reinvestment', defaultValue: '')
      String isinDivReinvestment});
}

/// @nodoc
class _$SchemeMetaDtoCopyWithImpl<$Res, $Val extends SchemeMetaDto>
    implements $SchemeMetaDtoCopyWith<$Res> {
  _$SchemeMetaDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fundHouse = null,
    Object? schemeType = null,
    Object? schemeCategory = null,
    Object? schemeCode = null,
    Object? schemeName = null,
    Object? isinGrowth = null,
    Object? isinDivReinvestment = null,
  }) {
    return _then(_value.copyWith(
      fundHouse: null == fundHouse
          ? _value.fundHouse
          : fundHouse // ignore: cast_nullable_to_non_nullable
              as String,
      schemeType: null == schemeType
          ? _value.schemeType
          : schemeType // ignore: cast_nullable_to_non_nullable
              as String,
      schemeCategory: null == schemeCategory
          ? _value.schemeCategory
          : schemeCategory // ignore: cast_nullable_to_non_nullable
              as String,
      schemeCode: null == schemeCode
          ? _value.schemeCode
          : schemeCode // ignore: cast_nullable_to_non_nullable
              as int,
      schemeName: null == schemeName
          ? _value.schemeName
          : schemeName // ignore: cast_nullable_to_non_nullable
              as String,
      isinGrowth: null == isinGrowth
          ? _value.isinGrowth
          : isinGrowth // ignore: cast_nullable_to_non_nullable
              as String,
      isinDivReinvestment: null == isinDivReinvestment
          ? _value.isinDivReinvestment
          : isinDivReinvestment // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SchemeMetaDtoImplCopyWith<$Res>
    implements $SchemeMetaDtoCopyWith<$Res> {
  factory _$$SchemeMetaDtoImplCopyWith(
          _$SchemeMetaDtoImpl value, $Res Function(_$SchemeMetaDtoImpl) then) =
      __$$SchemeMetaDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'fund_house', defaultValue: '') String fundHouse,
      @JsonKey(name: 'scheme_type', defaultValue: '') String schemeType,
      @JsonKey(name: 'scheme_category', defaultValue: '') String schemeCategory,
      @JsonKey(name: 'scheme_code', defaultValue: 0) int schemeCode,
      @JsonKey(name: 'scheme_name', defaultValue: '') String schemeName,
      @JsonKey(name: 'isin_growth', defaultValue: '') String isinGrowth,
      @JsonKey(name: 'isin_div_reinvestment', defaultValue: '')
      String isinDivReinvestment});
}

/// @nodoc
class __$$SchemeMetaDtoImplCopyWithImpl<$Res>
    extends _$SchemeMetaDtoCopyWithImpl<$Res, _$SchemeMetaDtoImpl>
    implements _$$SchemeMetaDtoImplCopyWith<$Res> {
  __$$SchemeMetaDtoImplCopyWithImpl(
      _$SchemeMetaDtoImpl _value, $Res Function(_$SchemeMetaDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fundHouse = null,
    Object? schemeType = null,
    Object? schemeCategory = null,
    Object? schemeCode = null,
    Object? schemeName = null,
    Object? isinGrowth = null,
    Object? isinDivReinvestment = null,
  }) {
    return _then(_$SchemeMetaDtoImpl(
      fundHouse: null == fundHouse
          ? _value.fundHouse
          : fundHouse // ignore: cast_nullable_to_non_nullable
              as String,
      schemeType: null == schemeType
          ? _value.schemeType
          : schemeType // ignore: cast_nullable_to_non_nullable
              as String,
      schemeCategory: null == schemeCategory
          ? _value.schemeCategory
          : schemeCategory // ignore: cast_nullable_to_non_nullable
              as String,
      schemeCode: null == schemeCode
          ? _value.schemeCode
          : schemeCode // ignore: cast_nullable_to_non_nullable
              as int,
      schemeName: null == schemeName
          ? _value.schemeName
          : schemeName // ignore: cast_nullable_to_non_nullable
              as String,
      isinGrowth: null == isinGrowth
          ? _value.isinGrowth
          : isinGrowth // ignore: cast_nullable_to_non_nullable
              as String,
      isinDivReinvestment: null == isinDivReinvestment
          ? _value.isinDivReinvestment
          : isinDivReinvestment // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SchemeMetaDtoImpl extends _SchemeMetaDto {
  const _$SchemeMetaDtoImpl(
      {@JsonKey(name: 'fund_house', defaultValue: '') required this.fundHouse,
      @JsonKey(name: 'scheme_type', defaultValue: '') required this.schemeType,
      @JsonKey(name: 'scheme_category', defaultValue: '')
      required this.schemeCategory,
      @JsonKey(name: 'scheme_code', defaultValue: 0) required this.schemeCode,
      @JsonKey(name: 'scheme_name', defaultValue: '') required this.schemeName,
      @JsonKey(name: 'isin_growth', defaultValue: '') required this.isinGrowth,
      @JsonKey(name: 'isin_div_reinvestment', defaultValue: '')
      required this.isinDivReinvestment})
      : super._();

  factory _$SchemeMetaDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$SchemeMetaDtoImplFromJson(json);

  @override
  @JsonKey(name: 'fund_house', defaultValue: '')
  final String fundHouse;
  @override
  @JsonKey(name: 'scheme_type', defaultValue: '')
  final String schemeType;
  @override
  @JsonKey(name: 'scheme_category', defaultValue: '')
  final String schemeCategory;
  @override
  @JsonKey(name: 'scheme_code', defaultValue: 0)
  final int schemeCode;
  @override
  @JsonKey(name: 'scheme_name', defaultValue: '')
  final String schemeName;
  @override
  @JsonKey(name: 'isin_growth', defaultValue: '')
  final String isinGrowth;
  @override
  @JsonKey(name: 'isin_div_reinvestment', defaultValue: '')
  final String isinDivReinvestment;

  @override
  String toString() {
    return 'SchemeMetaDto(fundHouse: $fundHouse, schemeType: $schemeType, schemeCategory: $schemeCategory, schemeCode: $schemeCode, schemeName: $schemeName, isinGrowth: $isinGrowth, isinDivReinvestment: $isinDivReinvestment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SchemeMetaDtoImpl &&
            (identical(other.fundHouse, fundHouse) ||
                other.fundHouse == fundHouse) &&
            (identical(other.schemeType, schemeType) ||
                other.schemeType == schemeType) &&
            (identical(other.schemeCategory, schemeCategory) ||
                other.schemeCategory == schemeCategory) &&
            (identical(other.schemeCode, schemeCode) ||
                other.schemeCode == schemeCode) &&
            (identical(other.schemeName, schemeName) ||
                other.schemeName == schemeName) &&
            (identical(other.isinGrowth, isinGrowth) ||
                other.isinGrowth == isinGrowth) &&
            (identical(other.isinDivReinvestment, isinDivReinvestment) ||
                other.isinDivReinvestment == isinDivReinvestment));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, fundHouse, schemeType,
      schemeCategory, schemeCode, schemeName, isinGrowth, isinDivReinvestment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SchemeMetaDtoImplCopyWith<_$SchemeMetaDtoImpl> get copyWith =>
      __$$SchemeMetaDtoImplCopyWithImpl<_$SchemeMetaDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SchemeMetaDtoImplToJson(
      this,
    );
  }
}

abstract class _SchemeMetaDto extends SchemeMetaDto {
  const factory _SchemeMetaDto(
      {@JsonKey(name: 'fund_house', defaultValue: '')
      required final String fundHouse,
      @JsonKey(name: 'scheme_type', defaultValue: '')
      required final String schemeType,
      @JsonKey(name: 'scheme_category', defaultValue: '')
      required final String schemeCategory,
      @JsonKey(name: 'scheme_code', defaultValue: 0)
      required final int schemeCode,
      @JsonKey(name: 'scheme_name', defaultValue: '')
      required final String schemeName,
      @JsonKey(name: 'isin_growth', defaultValue: '')
      required final String isinGrowth,
      @JsonKey(name: 'isin_div_reinvestment', defaultValue: '')
      required final String isinDivReinvestment}) = _$SchemeMetaDtoImpl;
  const _SchemeMetaDto._() : super._();

  factory _SchemeMetaDto.fromJson(Map<String, dynamic> json) =
      _$SchemeMetaDtoImpl.fromJson;

  @override
  @JsonKey(name: 'fund_house', defaultValue: '')
  String get fundHouse;
  @override
  @JsonKey(name: 'scheme_type', defaultValue: '')
  String get schemeType;
  @override
  @JsonKey(name: 'scheme_category', defaultValue: '')
  String get schemeCategory;
  @override
  @JsonKey(name: 'scheme_code', defaultValue: 0)
  int get schemeCode;
  @override
  @JsonKey(name: 'scheme_name', defaultValue: '')
  String get schemeName;
  @override
  @JsonKey(name: 'isin_growth', defaultValue: '')
  String get isinGrowth;
  @override
  @JsonKey(name: 'isin_div_reinvestment', defaultValue: '')
  String get isinDivReinvestment;
  @override
  @JsonKey(ignore: true)
  _$$SchemeMetaDtoImplCopyWith<_$SchemeMetaDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SchemeNavHistoryDto _$SchemeNavHistoryDtoFromJson(Map<String, dynamic> json) {
  return _SchemeNavHistoryDto.fromJson(json);
}

/// @nodoc
mixin _$SchemeNavHistoryDto {
  @JsonKey(name: 'date', defaultValue: '')
  String get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'nav', defaultValue: '')
  String get nav => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SchemeNavHistoryDtoCopyWith<SchemeNavHistoryDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SchemeNavHistoryDtoCopyWith<$Res> {
  factory $SchemeNavHistoryDtoCopyWith(
          SchemeNavHistoryDto value, $Res Function(SchemeNavHistoryDto) then) =
      _$SchemeNavHistoryDtoCopyWithImpl<$Res, SchemeNavHistoryDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'date', defaultValue: '') String date,
      @JsonKey(name: 'nav', defaultValue: '') String nav});
}

/// @nodoc
class _$SchemeNavHistoryDtoCopyWithImpl<$Res, $Val extends SchemeNavHistoryDto>
    implements $SchemeNavHistoryDtoCopyWith<$Res> {
  _$SchemeNavHistoryDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? nav = null,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      nav: null == nav
          ? _value.nav
          : nav // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SchemeNavHistoryDtoImplCopyWith<$Res>
    implements $SchemeNavHistoryDtoCopyWith<$Res> {
  factory _$$SchemeNavHistoryDtoImplCopyWith(_$SchemeNavHistoryDtoImpl value,
          $Res Function(_$SchemeNavHistoryDtoImpl) then) =
      __$$SchemeNavHistoryDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'date', defaultValue: '') String date,
      @JsonKey(name: 'nav', defaultValue: '') String nav});
}

/// @nodoc
class __$$SchemeNavHistoryDtoImplCopyWithImpl<$Res>
    extends _$SchemeNavHistoryDtoCopyWithImpl<$Res, _$SchemeNavHistoryDtoImpl>
    implements _$$SchemeNavHistoryDtoImplCopyWith<$Res> {
  __$$SchemeNavHistoryDtoImplCopyWithImpl(_$SchemeNavHistoryDtoImpl _value,
      $Res Function(_$SchemeNavHistoryDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? nav = null,
  }) {
    return _then(_$SchemeNavHistoryDtoImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      nav: null == nav
          ? _value.nav
          : nav // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SchemeNavHistoryDtoImpl extends _SchemeNavHistoryDto {
  const _$SchemeNavHistoryDtoImpl(
      {@JsonKey(name: 'date', defaultValue: '') required this.date,
      @JsonKey(name: 'nav', defaultValue: '') required this.nav})
      : super._();

  factory _$SchemeNavHistoryDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$SchemeNavHistoryDtoImplFromJson(json);

  @override
  @JsonKey(name: 'date', defaultValue: '')
  final String date;
  @override
  @JsonKey(name: 'nav', defaultValue: '')
  final String nav;

  @override
  String toString() {
    return 'SchemeNavHistoryDto(date: $date, nav: $nav)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SchemeNavHistoryDtoImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.nav, nav) || other.nav == nav));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, date, nav);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SchemeNavHistoryDtoImplCopyWith<_$SchemeNavHistoryDtoImpl> get copyWith =>
      __$$SchemeNavHistoryDtoImplCopyWithImpl<_$SchemeNavHistoryDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SchemeNavHistoryDtoImplToJson(
      this,
    );
  }
}

abstract class _SchemeNavHistoryDto extends SchemeNavHistoryDto {
  const factory _SchemeNavHistoryDto(
          {@JsonKey(name: 'date', defaultValue: '') required final String date,
          @JsonKey(name: 'nav', defaultValue: '') required final String nav}) =
      _$SchemeNavHistoryDtoImpl;
  const _SchemeNavHistoryDto._() : super._();

  factory _SchemeNavHistoryDto.fromJson(Map<String, dynamic> json) =
      _$SchemeNavHistoryDtoImpl.fromJson;

  @override
  @JsonKey(name: 'date', defaultValue: '')
  String get date;
  @override
  @JsonKey(name: 'nav', defaultValue: '')
  String get nav;
  @override
  @JsonKey(ignore: true)
  _$$SchemeNavHistoryDtoImplCopyWith<_$SchemeNavHistoryDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
