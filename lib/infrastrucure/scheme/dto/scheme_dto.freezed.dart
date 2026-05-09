// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'scheme_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SchemeDto _$SchemeDtoFromJson(Map<String, dynamic> json) {
  return _SchemeDto.fromJson(json);
}

/// @nodoc
mixin _$SchemeDto {
  @JsonKey(name: 'schemeCode', defaultValue: 0)
  int get schemeCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'schemeName', defaultValue: '')
  String get schemeName => throw _privateConstructorUsedError;
  @JsonKey(name: 'isinGrowth', defaultValue: '')
  String get isinGrowth => throw _privateConstructorUsedError;
  @JsonKey(name: 'isinDivReinvestment', defaultValue: '')
  String get isinDivReinvestment => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SchemeDtoCopyWith<SchemeDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SchemeDtoCopyWith<$Res> {
  factory $SchemeDtoCopyWith(SchemeDto value, $Res Function(SchemeDto) then) =
      _$SchemeDtoCopyWithImpl<$Res, SchemeDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'schemeCode', defaultValue: 0) int schemeCode,
      @JsonKey(name: 'schemeName', defaultValue: '') String schemeName,
      @JsonKey(name: 'isinGrowth', defaultValue: '') String isinGrowth,
      @JsonKey(name: 'isinDivReinvestment', defaultValue: '')
      String isinDivReinvestment});
}

/// @nodoc
class _$SchemeDtoCopyWithImpl<$Res, $Val extends SchemeDto>
    implements $SchemeDtoCopyWith<$Res> {
  _$SchemeDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? schemeCode = null,
    Object? schemeName = null,
    Object? isinGrowth = null,
    Object? isinDivReinvestment = null,
  }) {
    return _then(_value.copyWith(
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
abstract class _$$SchemeDtoImplCopyWith<$Res>
    implements $SchemeDtoCopyWith<$Res> {
  factory _$$SchemeDtoImplCopyWith(
          _$SchemeDtoImpl value, $Res Function(_$SchemeDtoImpl) then) =
      __$$SchemeDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'schemeCode', defaultValue: 0) int schemeCode,
      @JsonKey(name: 'schemeName', defaultValue: '') String schemeName,
      @JsonKey(name: 'isinGrowth', defaultValue: '') String isinGrowth,
      @JsonKey(name: 'isinDivReinvestment', defaultValue: '')
      String isinDivReinvestment});
}

/// @nodoc
class __$$SchemeDtoImplCopyWithImpl<$Res>
    extends _$SchemeDtoCopyWithImpl<$Res, _$SchemeDtoImpl>
    implements _$$SchemeDtoImplCopyWith<$Res> {
  __$$SchemeDtoImplCopyWithImpl(
      _$SchemeDtoImpl _value, $Res Function(_$SchemeDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? schemeCode = null,
    Object? schemeName = null,
    Object? isinGrowth = null,
    Object? isinDivReinvestment = null,
  }) {
    return _then(_$SchemeDtoImpl(
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
class _$SchemeDtoImpl extends _SchemeDto {
  const _$SchemeDtoImpl(
      {@JsonKey(name: 'schemeCode', defaultValue: 0) required this.schemeCode,
      @JsonKey(name: 'schemeName', defaultValue: '') required this.schemeName,
      @JsonKey(name: 'isinGrowth', defaultValue: '') required this.isinGrowth,
      @JsonKey(name: 'isinDivReinvestment', defaultValue: '')
      required this.isinDivReinvestment})
      : super._();

  factory _$SchemeDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$SchemeDtoImplFromJson(json);

  @override
  @JsonKey(name: 'schemeCode', defaultValue: 0)
  final int schemeCode;
  @override
  @JsonKey(name: 'schemeName', defaultValue: '')
  final String schemeName;
  @override
  @JsonKey(name: 'isinGrowth', defaultValue: '')
  final String isinGrowth;
  @override
  @JsonKey(name: 'isinDivReinvestment', defaultValue: '')
  final String isinDivReinvestment;

  @override
  String toString() {
    return 'SchemeDto(schemeCode: $schemeCode, schemeName: $schemeName, isinGrowth: $isinGrowth, isinDivReinvestment: $isinDivReinvestment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SchemeDtoImpl &&
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
  int get hashCode => Object.hash(
      runtimeType, schemeCode, schemeName, isinGrowth, isinDivReinvestment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SchemeDtoImplCopyWith<_$SchemeDtoImpl> get copyWith =>
      __$$SchemeDtoImplCopyWithImpl<_$SchemeDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SchemeDtoImplToJson(
      this,
    );
  }
}

abstract class _SchemeDto extends SchemeDto {
  const factory _SchemeDto(
      {@JsonKey(name: 'schemeCode', defaultValue: 0)
      required final int schemeCode,
      @JsonKey(name: 'schemeName', defaultValue: '')
      required final String schemeName,
      @JsonKey(name: 'isinGrowth', defaultValue: '')
      required final String isinGrowth,
      @JsonKey(name: 'isinDivReinvestment', defaultValue: '')
      required final String isinDivReinvestment}) = _$SchemeDtoImpl;
  const _SchemeDto._() : super._();

  factory _SchemeDto.fromJson(Map<String, dynamic> json) =
      _$SchemeDtoImpl.fromJson;

  @override
  @JsonKey(name: 'schemeCode', defaultValue: 0)
  int get schemeCode;
  @override
  @JsonKey(name: 'schemeName', defaultValue: '')
  String get schemeName;
  @override
  @JsonKey(name: 'isinGrowth', defaultValue: '')
  String get isinGrowth;
  @override
  @JsonKey(name: 'isinDivReinvestment', defaultValue: '')
  String get isinDivReinvestment;
  @override
  @JsonKey(ignore: true)
  _$$SchemeDtoImplCopyWith<_$SchemeDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
