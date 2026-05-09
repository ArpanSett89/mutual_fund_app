// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'scheme.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Scheme {
  int get schemeCode => throw _privateConstructorUsedError;
  String get schemeName => throw _privateConstructorUsedError;
  String get isinGrowth => throw _privateConstructorUsedError;
  String get isinDivReinvestment => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SchemeCopyWith<Scheme> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SchemeCopyWith<$Res> {
  factory $SchemeCopyWith(Scheme value, $Res Function(Scheme) then) =
      _$SchemeCopyWithImpl<$Res, Scheme>;
  @useResult
  $Res call(
      {int schemeCode,
      String schemeName,
      String isinGrowth,
      String isinDivReinvestment});
}

/// @nodoc
class _$SchemeCopyWithImpl<$Res, $Val extends Scheme>
    implements $SchemeCopyWith<$Res> {
  _$SchemeCopyWithImpl(this._value, this._then);

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
abstract class _$$SchemeImplCopyWith<$Res> implements $SchemeCopyWith<$Res> {
  factory _$$SchemeImplCopyWith(
          _$SchemeImpl value, $Res Function(_$SchemeImpl) then) =
      __$$SchemeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int schemeCode,
      String schemeName,
      String isinGrowth,
      String isinDivReinvestment});
}

/// @nodoc
class __$$SchemeImplCopyWithImpl<$Res>
    extends _$SchemeCopyWithImpl<$Res, _$SchemeImpl>
    implements _$$SchemeImplCopyWith<$Res> {
  __$$SchemeImplCopyWithImpl(
      _$SchemeImpl _value, $Res Function(_$SchemeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? schemeCode = null,
    Object? schemeName = null,
    Object? isinGrowth = null,
    Object? isinDivReinvestment = null,
  }) {
    return _then(_$SchemeImpl(
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

class _$SchemeImpl extends _Scheme {
  const _$SchemeImpl(
      {required this.schemeCode,
      required this.schemeName,
      required this.isinGrowth,
      required this.isinDivReinvestment})
      : super._();

  @override
  final int schemeCode;
  @override
  final String schemeName;
  @override
  final String isinGrowth;
  @override
  final String isinDivReinvestment;

  @override
  String toString() {
    return 'Scheme(schemeCode: $schemeCode, schemeName: $schemeName, isinGrowth: $isinGrowth, isinDivReinvestment: $isinDivReinvestment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SchemeImpl &&
            (identical(other.schemeCode, schemeCode) ||
                other.schemeCode == schemeCode) &&
            (identical(other.schemeName, schemeName) ||
                other.schemeName == schemeName) &&
            (identical(other.isinGrowth, isinGrowth) ||
                other.isinGrowth == isinGrowth) &&
            (identical(other.isinDivReinvestment, isinDivReinvestment) ||
                other.isinDivReinvestment == isinDivReinvestment));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, schemeCode, schemeName, isinGrowth, isinDivReinvestment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SchemeImplCopyWith<_$SchemeImpl> get copyWith =>
      __$$SchemeImplCopyWithImpl<_$SchemeImpl>(this, _$identity);
}

abstract class _Scheme extends Scheme {
  const factory _Scheme(
      {required final int schemeCode,
      required final String schemeName,
      required final String isinGrowth,
      required final String isinDivReinvestment}) = _$SchemeImpl;
  const _Scheme._() : super._();

  @override
  int get schemeCode;
  @override
  String get schemeName;
  @override
  String get isinGrowth;
  @override
  String get isinDivReinvestment;
  @override
  @JsonKey(ignore: true)
  _$$SchemeImplCopyWith<_$SchemeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
