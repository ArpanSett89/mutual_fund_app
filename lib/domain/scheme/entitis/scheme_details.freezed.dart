// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'scheme_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SchemeDetails {
  SchemeMeta get meta => throw _privateConstructorUsedError;
  List<SchemeNavHistory> get navHistory => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SchemeDetailsCopyWith<SchemeDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SchemeDetailsCopyWith<$Res> {
  factory $SchemeDetailsCopyWith(
          SchemeDetails value, $Res Function(SchemeDetails) then) =
      _$SchemeDetailsCopyWithImpl<$Res, SchemeDetails>;
  @useResult
  $Res call(
      {SchemeMeta meta, List<SchemeNavHistory> navHistory, String status});

  $SchemeMetaCopyWith<$Res> get meta;
}

/// @nodoc
class _$SchemeDetailsCopyWithImpl<$Res, $Val extends SchemeDetails>
    implements $SchemeDetailsCopyWith<$Res> {
  _$SchemeDetailsCopyWithImpl(this._value, this._then);

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
              as SchemeMeta,
      navHistory: null == navHistory
          ? _value.navHistory
          : navHistory // ignore: cast_nullable_to_non_nullable
              as List<SchemeNavHistory>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SchemeMetaCopyWith<$Res> get meta {
    return $SchemeMetaCopyWith<$Res>(_value.meta, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SchemeDetailsImplCopyWith<$Res>
    implements $SchemeDetailsCopyWith<$Res> {
  factory _$$SchemeDetailsImplCopyWith(
          _$SchemeDetailsImpl value, $Res Function(_$SchemeDetailsImpl) then) =
      __$$SchemeDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SchemeMeta meta, List<SchemeNavHistory> navHistory, String status});

  @override
  $SchemeMetaCopyWith<$Res> get meta;
}

/// @nodoc
class __$$SchemeDetailsImplCopyWithImpl<$Res>
    extends _$SchemeDetailsCopyWithImpl<$Res, _$SchemeDetailsImpl>
    implements _$$SchemeDetailsImplCopyWith<$Res> {
  __$$SchemeDetailsImplCopyWithImpl(
      _$SchemeDetailsImpl _value, $Res Function(_$SchemeDetailsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meta = null,
    Object? navHistory = null,
    Object? status = null,
  }) {
    return _then(_$SchemeDetailsImpl(
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as SchemeMeta,
      navHistory: null == navHistory
          ? _value._navHistory
          : navHistory // ignore: cast_nullable_to_non_nullable
              as List<SchemeNavHistory>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SchemeDetailsImpl extends _SchemeDetails {
  const _$SchemeDetailsImpl(
      {required this.meta,
      required final List<SchemeNavHistory> navHistory,
      required this.status})
      : _navHistory = navHistory,
        super._();

  @override
  final SchemeMeta meta;
  final List<SchemeNavHistory> _navHistory;
  @override
  List<SchemeNavHistory> get navHistory {
    if (_navHistory is EqualUnmodifiableListView) return _navHistory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_navHistory);
  }

  @override
  final String status;

  @override
  String toString() {
    return 'SchemeDetails(meta: $meta, navHistory: $navHistory, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SchemeDetailsImpl &&
            (identical(other.meta, meta) || other.meta == meta) &&
            const DeepCollectionEquality()
                .equals(other._navHistory, _navHistory) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, meta,
      const DeepCollectionEquality().hash(_navHistory), status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SchemeDetailsImplCopyWith<_$SchemeDetailsImpl> get copyWith =>
      __$$SchemeDetailsImplCopyWithImpl<_$SchemeDetailsImpl>(this, _$identity);
}

abstract class _SchemeDetails extends SchemeDetails {
  const factory _SchemeDetails(
      {required final SchemeMeta meta,
      required final List<SchemeNavHistory> navHistory,
      required final String status}) = _$SchemeDetailsImpl;
  const _SchemeDetails._() : super._();

  @override
  SchemeMeta get meta;
  @override
  List<SchemeNavHistory> get navHistory;
  @override
  String get status;
  @override
  @JsonKey(ignore: true)
  _$$SchemeDetailsImplCopyWith<_$SchemeDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SchemeMeta {
  String get fundHouse => throw _privateConstructorUsedError;
  String get schemeType => throw _privateConstructorUsedError;
  String get schemeCategory => throw _privateConstructorUsedError;
  int get schemeCode => throw _privateConstructorUsedError;
  String get schemeName => throw _privateConstructorUsedError;
  String get isinGrowth => throw _privateConstructorUsedError;
  String get isinDivReinvestment => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SchemeMetaCopyWith<SchemeMeta> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SchemeMetaCopyWith<$Res> {
  factory $SchemeMetaCopyWith(
          SchemeMeta value, $Res Function(SchemeMeta) then) =
      _$SchemeMetaCopyWithImpl<$Res, SchemeMeta>;
  @useResult
  $Res call(
      {String fundHouse,
      String schemeType,
      String schemeCategory,
      int schemeCode,
      String schemeName,
      String isinGrowth,
      String isinDivReinvestment});
}

/// @nodoc
class _$SchemeMetaCopyWithImpl<$Res, $Val extends SchemeMeta>
    implements $SchemeMetaCopyWith<$Res> {
  _$SchemeMetaCopyWithImpl(this._value, this._then);

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
abstract class _$$SchemeMetaImplCopyWith<$Res>
    implements $SchemeMetaCopyWith<$Res> {
  factory _$$SchemeMetaImplCopyWith(
          _$SchemeMetaImpl value, $Res Function(_$SchemeMetaImpl) then) =
      __$$SchemeMetaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String fundHouse,
      String schemeType,
      String schemeCategory,
      int schemeCode,
      String schemeName,
      String isinGrowth,
      String isinDivReinvestment});
}

/// @nodoc
class __$$SchemeMetaImplCopyWithImpl<$Res>
    extends _$SchemeMetaCopyWithImpl<$Res, _$SchemeMetaImpl>
    implements _$$SchemeMetaImplCopyWith<$Res> {
  __$$SchemeMetaImplCopyWithImpl(
      _$SchemeMetaImpl _value, $Res Function(_$SchemeMetaImpl) _then)
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
    return _then(_$SchemeMetaImpl(
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

class _$SchemeMetaImpl extends _SchemeMeta {
  const _$SchemeMetaImpl(
      {required this.fundHouse,
      required this.schemeType,
      required this.schemeCategory,
      required this.schemeCode,
      required this.schemeName,
      required this.isinGrowth,
      required this.isinDivReinvestment})
      : super._();

  @override
  final String fundHouse;
  @override
  final String schemeType;
  @override
  final String schemeCategory;
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
    return 'SchemeMeta(fundHouse: $fundHouse, schemeType: $schemeType, schemeCategory: $schemeCategory, schemeCode: $schemeCode, schemeName: $schemeName, isinGrowth: $isinGrowth, isinDivReinvestment: $isinDivReinvestment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SchemeMetaImpl &&
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

  @override
  int get hashCode => Object.hash(runtimeType, fundHouse, schemeType,
      schemeCategory, schemeCode, schemeName, isinGrowth, isinDivReinvestment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SchemeMetaImplCopyWith<_$SchemeMetaImpl> get copyWith =>
      __$$SchemeMetaImplCopyWithImpl<_$SchemeMetaImpl>(this, _$identity);
}

abstract class _SchemeMeta extends SchemeMeta {
  const factory _SchemeMeta(
      {required final String fundHouse,
      required final String schemeType,
      required final String schemeCategory,
      required final int schemeCode,
      required final String schemeName,
      required final String isinGrowth,
      required final String isinDivReinvestment}) = _$SchemeMetaImpl;
  const _SchemeMeta._() : super._();

  @override
  String get fundHouse;
  @override
  String get schemeType;
  @override
  String get schemeCategory;
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
  _$$SchemeMetaImplCopyWith<_$SchemeMetaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SchemeNavHistory {
  String get date => throw _privateConstructorUsedError;
  String get nav => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SchemeNavHistoryCopyWith<SchemeNavHistory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SchemeNavHistoryCopyWith<$Res> {
  factory $SchemeNavHistoryCopyWith(
          SchemeNavHistory value, $Res Function(SchemeNavHistory) then) =
      _$SchemeNavHistoryCopyWithImpl<$Res, SchemeNavHistory>;
  @useResult
  $Res call({String date, String nav});
}

/// @nodoc
class _$SchemeNavHistoryCopyWithImpl<$Res, $Val extends SchemeNavHistory>
    implements $SchemeNavHistoryCopyWith<$Res> {
  _$SchemeNavHistoryCopyWithImpl(this._value, this._then);

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
abstract class _$$SchemeNavHistoryImplCopyWith<$Res>
    implements $SchemeNavHistoryCopyWith<$Res> {
  factory _$$SchemeNavHistoryImplCopyWith(_$SchemeNavHistoryImpl value,
          $Res Function(_$SchemeNavHistoryImpl) then) =
      __$$SchemeNavHistoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String date, String nav});
}

/// @nodoc
class __$$SchemeNavHistoryImplCopyWithImpl<$Res>
    extends _$SchemeNavHistoryCopyWithImpl<$Res, _$SchemeNavHistoryImpl>
    implements _$$SchemeNavHistoryImplCopyWith<$Res> {
  __$$SchemeNavHistoryImplCopyWithImpl(_$SchemeNavHistoryImpl _value,
      $Res Function(_$SchemeNavHistoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? nav = null,
  }) {
    return _then(_$SchemeNavHistoryImpl(
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

class _$SchemeNavHistoryImpl extends _SchemeNavHistory {
  const _$SchemeNavHistoryImpl({required this.date, required this.nav})
      : super._();

  @override
  final String date;
  @override
  final String nav;

  @override
  String toString() {
    return 'SchemeNavHistory(date: $date, nav: $nav)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SchemeNavHistoryImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.nav, nav) || other.nav == nav));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date, nav);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SchemeNavHistoryImplCopyWith<_$SchemeNavHistoryImpl> get copyWith =>
      __$$SchemeNavHistoryImplCopyWithImpl<_$SchemeNavHistoryImpl>(
          this, _$identity);
}

abstract class _SchemeNavHistory extends SchemeNavHistory {
  const factory _SchemeNavHistory(
      {required final String date,
      required final String nav}) = _$SchemeNavHistoryImpl;
  const _SchemeNavHistory._() : super._();

  @override
  String get date;
  @override
  String get nav;
  @override
  @JsonKey(ignore: true)
  _$$SchemeNavHistoryImplCopyWith<_$SchemeNavHistoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
