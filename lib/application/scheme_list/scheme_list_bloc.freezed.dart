// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'scheme_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SchemeListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchSchemeList,
    required TResult Function(String query) searchSchemeList,
    required TResult Function() clearSearchSchemeList,
    required TResult Function(String schemeId) fetchSchemeDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchSchemeList,
    TResult? Function(String query)? searchSchemeList,
    TResult? Function()? clearSearchSchemeList,
    TResult? Function(String schemeId)? fetchSchemeDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchSchemeList,
    TResult Function(String query)? searchSchemeList,
    TResult Function()? clearSearchSchemeList,
    TResult Function(String schemeId)? fetchSchemeDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchSchemeList value) fetchSchemeList,
    required TResult Function(_SearchSchemeList value) searchSchemeList,
    required TResult Function(_ClearSearchSchemeList value)
        clearSearchSchemeList,
    required TResult Function(_FetchSchemeDetails value) fetchSchemeDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchSchemeList value)? fetchSchemeList,
    TResult? Function(_SearchSchemeList value)? searchSchemeList,
    TResult? Function(_ClearSearchSchemeList value)? clearSearchSchemeList,
    TResult? Function(_FetchSchemeDetails value)? fetchSchemeDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchSchemeList value)? fetchSchemeList,
    TResult Function(_SearchSchemeList value)? searchSchemeList,
    TResult Function(_ClearSearchSchemeList value)? clearSearchSchemeList,
    TResult Function(_FetchSchemeDetails value)? fetchSchemeDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SchemeListEventCopyWith<$Res> {
  factory $SchemeListEventCopyWith(
          SchemeListEvent value, $Res Function(SchemeListEvent) then) =
      _$SchemeListEventCopyWithImpl<$Res, SchemeListEvent>;
}

/// @nodoc
class _$SchemeListEventCopyWithImpl<$Res, $Val extends SchemeListEvent>
    implements $SchemeListEventCopyWith<$Res> {
  _$SchemeListEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchSchemeListImplCopyWith<$Res> {
  factory _$$FetchSchemeListImplCopyWith(_$FetchSchemeListImpl value,
          $Res Function(_$FetchSchemeListImpl) then) =
      __$$FetchSchemeListImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchSchemeListImplCopyWithImpl<$Res>
    extends _$SchemeListEventCopyWithImpl<$Res, _$FetchSchemeListImpl>
    implements _$$FetchSchemeListImplCopyWith<$Res> {
  __$$FetchSchemeListImplCopyWithImpl(
      _$FetchSchemeListImpl _value, $Res Function(_$FetchSchemeListImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchSchemeListImpl implements _FetchSchemeList {
  const _$FetchSchemeListImpl();

  @override
  String toString() {
    return 'SchemeListEvent.fetchSchemeList()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchSchemeListImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchSchemeList,
    required TResult Function(String query) searchSchemeList,
    required TResult Function() clearSearchSchemeList,
    required TResult Function(String schemeId) fetchSchemeDetails,
  }) {
    return fetchSchemeList();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchSchemeList,
    TResult? Function(String query)? searchSchemeList,
    TResult? Function()? clearSearchSchemeList,
    TResult? Function(String schemeId)? fetchSchemeDetails,
  }) {
    return fetchSchemeList?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchSchemeList,
    TResult Function(String query)? searchSchemeList,
    TResult Function()? clearSearchSchemeList,
    TResult Function(String schemeId)? fetchSchemeDetails,
    required TResult orElse(),
  }) {
    if (fetchSchemeList != null) {
      return fetchSchemeList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchSchemeList value) fetchSchemeList,
    required TResult Function(_SearchSchemeList value) searchSchemeList,
    required TResult Function(_ClearSearchSchemeList value)
        clearSearchSchemeList,
    required TResult Function(_FetchSchemeDetails value) fetchSchemeDetails,
  }) {
    return fetchSchemeList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchSchemeList value)? fetchSchemeList,
    TResult? Function(_SearchSchemeList value)? searchSchemeList,
    TResult? Function(_ClearSearchSchemeList value)? clearSearchSchemeList,
    TResult? Function(_FetchSchemeDetails value)? fetchSchemeDetails,
  }) {
    return fetchSchemeList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchSchemeList value)? fetchSchemeList,
    TResult Function(_SearchSchemeList value)? searchSchemeList,
    TResult Function(_ClearSearchSchemeList value)? clearSearchSchemeList,
    TResult Function(_FetchSchemeDetails value)? fetchSchemeDetails,
    required TResult orElse(),
  }) {
    if (fetchSchemeList != null) {
      return fetchSchemeList(this);
    }
    return orElse();
  }
}

abstract class _FetchSchemeList implements SchemeListEvent {
  const factory _FetchSchemeList() = _$FetchSchemeListImpl;
}

/// @nodoc
abstract class _$$SearchSchemeListImplCopyWith<$Res> {
  factory _$$SearchSchemeListImplCopyWith(_$SearchSchemeListImpl value,
          $Res Function(_$SearchSchemeListImpl) then) =
      __$$SearchSchemeListImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$SearchSchemeListImplCopyWithImpl<$Res>
    extends _$SchemeListEventCopyWithImpl<$Res, _$SearchSchemeListImpl>
    implements _$$SearchSchemeListImplCopyWith<$Res> {
  __$$SearchSchemeListImplCopyWithImpl(_$SearchSchemeListImpl _value,
      $Res Function(_$SearchSchemeListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$SearchSchemeListImpl(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchSchemeListImpl implements _SearchSchemeList {
  const _$SearchSchemeListImpl({required this.query});

  @override
  final String query;

  @override
  String toString() {
    return 'SchemeListEvent.searchSchemeList(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchSchemeListImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchSchemeListImplCopyWith<_$SearchSchemeListImpl> get copyWith =>
      __$$SearchSchemeListImplCopyWithImpl<_$SearchSchemeListImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchSchemeList,
    required TResult Function(String query) searchSchemeList,
    required TResult Function() clearSearchSchemeList,
    required TResult Function(String schemeId) fetchSchemeDetails,
  }) {
    return searchSchemeList(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchSchemeList,
    TResult? Function(String query)? searchSchemeList,
    TResult? Function()? clearSearchSchemeList,
    TResult? Function(String schemeId)? fetchSchemeDetails,
  }) {
    return searchSchemeList?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchSchemeList,
    TResult Function(String query)? searchSchemeList,
    TResult Function()? clearSearchSchemeList,
    TResult Function(String schemeId)? fetchSchemeDetails,
    required TResult orElse(),
  }) {
    if (searchSchemeList != null) {
      return searchSchemeList(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchSchemeList value) fetchSchemeList,
    required TResult Function(_SearchSchemeList value) searchSchemeList,
    required TResult Function(_ClearSearchSchemeList value)
        clearSearchSchemeList,
    required TResult Function(_FetchSchemeDetails value) fetchSchemeDetails,
  }) {
    return searchSchemeList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchSchemeList value)? fetchSchemeList,
    TResult? Function(_SearchSchemeList value)? searchSchemeList,
    TResult? Function(_ClearSearchSchemeList value)? clearSearchSchemeList,
    TResult? Function(_FetchSchemeDetails value)? fetchSchemeDetails,
  }) {
    return searchSchemeList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchSchemeList value)? fetchSchemeList,
    TResult Function(_SearchSchemeList value)? searchSchemeList,
    TResult Function(_ClearSearchSchemeList value)? clearSearchSchemeList,
    TResult Function(_FetchSchemeDetails value)? fetchSchemeDetails,
    required TResult orElse(),
  }) {
    if (searchSchemeList != null) {
      return searchSchemeList(this);
    }
    return orElse();
  }
}

abstract class _SearchSchemeList implements SchemeListEvent {
  const factory _SearchSchemeList({required final String query}) =
      _$SearchSchemeListImpl;

  String get query;
  @JsonKey(ignore: true)
  _$$SearchSchemeListImplCopyWith<_$SearchSchemeListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearSearchSchemeListImplCopyWith<$Res> {
  factory _$$ClearSearchSchemeListImplCopyWith(
          _$ClearSearchSchemeListImpl value,
          $Res Function(_$ClearSearchSchemeListImpl) then) =
      __$$ClearSearchSchemeListImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearSearchSchemeListImplCopyWithImpl<$Res>
    extends _$SchemeListEventCopyWithImpl<$Res, _$ClearSearchSchemeListImpl>
    implements _$$ClearSearchSchemeListImplCopyWith<$Res> {
  __$$ClearSearchSchemeListImplCopyWithImpl(_$ClearSearchSchemeListImpl _value,
      $Res Function(_$ClearSearchSchemeListImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClearSearchSchemeListImpl implements _ClearSearchSchemeList {
  const _$ClearSearchSchemeListImpl();

  @override
  String toString() {
    return 'SchemeListEvent.clearSearchSchemeList()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearSearchSchemeListImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchSchemeList,
    required TResult Function(String query) searchSchemeList,
    required TResult Function() clearSearchSchemeList,
    required TResult Function(String schemeId) fetchSchemeDetails,
  }) {
    return clearSearchSchemeList();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchSchemeList,
    TResult? Function(String query)? searchSchemeList,
    TResult? Function()? clearSearchSchemeList,
    TResult? Function(String schemeId)? fetchSchemeDetails,
  }) {
    return clearSearchSchemeList?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchSchemeList,
    TResult Function(String query)? searchSchemeList,
    TResult Function()? clearSearchSchemeList,
    TResult Function(String schemeId)? fetchSchemeDetails,
    required TResult orElse(),
  }) {
    if (clearSearchSchemeList != null) {
      return clearSearchSchemeList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchSchemeList value) fetchSchemeList,
    required TResult Function(_SearchSchemeList value) searchSchemeList,
    required TResult Function(_ClearSearchSchemeList value)
        clearSearchSchemeList,
    required TResult Function(_FetchSchemeDetails value) fetchSchemeDetails,
  }) {
    return clearSearchSchemeList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchSchemeList value)? fetchSchemeList,
    TResult? Function(_SearchSchemeList value)? searchSchemeList,
    TResult? Function(_ClearSearchSchemeList value)? clearSearchSchemeList,
    TResult? Function(_FetchSchemeDetails value)? fetchSchemeDetails,
  }) {
    return clearSearchSchemeList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchSchemeList value)? fetchSchemeList,
    TResult Function(_SearchSchemeList value)? searchSchemeList,
    TResult Function(_ClearSearchSchemeList value)? clearSearchSchemeList,
    TResult Function(_FetchSchemeDetails value)? fetchSchemeDetails,
    required TResult orElse(),
  }) {
    if (clearSearchSchemeList != null) {
      return clearSearchSchemeList(this);
    }
    return orElse();
  }
}

abstract class _ClearSearchSchemeList implements SchemeListEvent {
  const factory _ClearSearchSchemeList() = _$ClearSearchSchemeListImpl;
}

/// @nodoc
abstract class _$$FetchSchemeDetailsImplCopyWith<$Res> {
  factory _$$FetchSchemeDetailsImplCopyWith(_$FetchSchemeDetailsImpl value,
          $Res Function(_$FetchSchemeDetailsImpl) then) =
      __$$FetchSchemeDetailsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String schemeId});
}

/// @nodoc
class __$$FetchSchemeDetailsImplCopyWithImpl<$Res>
    extends _$SchemeListEventCopyWithImpl<$Res, _$FetchSchemeDetailsImpl>
    implements _$$FetchSchemeDetailsImplCopyWith<$Res> {
  __$$FetchSchemeDetailsImplCopyWithImpl(_$FetchSchemeDetailsImpl _value,
      $Res Function(_$FetchSchemeDetailsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? schemeId = null,
  }) {
    return _then(_$FetchSchemeDetailsImpl(
      schemeId: null == schemeId
          ? _value.schemeId
          : schemeId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FetchSchemeDetailsImpl implements _FetchSchemeDetails {
  const _$FetchSchemeDetailsImpl({required this.schemeId});

  @override
  final String schemeId;

  @override
  String toString() {
    return 'SchemeListEvent.fetchSchemeDetails(schemeId: $schemeId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchSchemeDetailsImpl &&
            (identical(other.schemeId, schemeId) ||
                other.schemeId == schemeId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, schemeId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchSchemeDetailsImplCopyWith<_$FetchSchemeDetailsImpl> get copyWith =>
      __$$FetchSchemeDetailsImplCopyWithImpl<_$FetchSchemeDetailsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchSchemeList,
    required TResult Function(String query) searchSchemeList,
    required TResult Function() clearSearchSchemeList,
    required TResult Function(String schemeId) fetchSchemeDetails,
  }) {
    return fetchSchemeDetails(schemeId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchSchemeList,
    TResult? Function(String query)? searchSchemeList,
    TResult? Function()? clearSearchSchemeList,
    TResult? Function(String schemeId)? fetchSchemeDetails,
  }) {
    return fetchSchemeDetails?.call(schemeId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchSchemeList,
    TResult Function(String query)? searchSchemeList,
    TResult Function()? clearSearchSchemeList,
    TResult Function(String schemeId)? fetchSchemeDetails,
    required TResult orElse(),
  }) {
    if (fetchSchemeDetails != null) {
      return fetchSchemeDetails(schemeId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchSchemeList value) fetchSchemeList,
    required TResult Function(_SearchSchemeList value) searchSchemeList,
    required TResult Function(_ClearSearchSchemeList value)
        clearSearchSchemeList,
    required TResult Function(_FetchSchemeDetails value) fetchSchemeDetails,
  }) {
    return fetchSchemeDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchSchemeList value)? fetchSchemeList,
    TResult? Function(_SearchSchemeList value)? searchSchemeList,
    TResult? Function(_ClearSearchSchemeList value)? clearSearchSchemeList,
    TResult? Function(_FetchSchemeDetails value)? fetchSchemeDetails,
  }) {
    return fetchSchemeDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchSchemeList value)? fetchSchemeList,
    TResult Function(_SearchSchemeList value)? searchSchemeList,
    TResult Function(_ClearSearchSchemeList value)? clearSearchSchemeList,
    TResult Function(_FetchSchemeDetails value)? fetchSchemeDetails,
    required TResult orElse(),
  }) {
    if (fetchSchemeDetails != null) {
      return fetchSchemeDetails(this);
    }
    return orElse();
  }
}

abstract class _FetchSchemeDetails implements SchemeListEvent {
  const factory _FetchSchemeDetails({required final String schemeId}) =
      _$FetchSchemeDetailsImpl;

  String get schemeId;
  @JsonKey(ignore: true)
  _$$FetchSchemeDetailsImplCopyWith<_$FetchSchemeDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SchemeListState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isFetchingDetails => throw _privateConstructorUsedError;
  String get searchKey => throw _privateConstructorUsedError;
  List<Scheme> get schemes => throw _privateConstructorUsedError;
  List<Scheme> get filteredSchemes => throw _privateConstructorUsedError;
  SchemeDetails get schemeDetails => throw _privateConstructorUsedError;
  Option<Either<ApiFailure, dynamic>> get schemesFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SchemeListStateCopyWith<SchemeListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SchemeListStateCopyWith<$Res> {
  factory $SchemeListStateCopyWith(
          SchemeListState value, $Res Function(SchemeListState) then) =
      _$SchemeListStateCopyWithImpl<$Res, SchemeListState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isFetchingDetails,
      String searchKey,
      List<Scheme> schemes,
      List<Scheme> filteredSchemes,
      SchemeDetails schemeDetails,
      Option<Either<ApiFailure, dynamic>> schemesFailureOrSuccessOption});

  $SchemeDetailsCopyWith<$Res> get schemeDetails;
}

/// @nodoc
class _$SchemeListStateCopyWithImpl<$Res, $Val extends SchemeListState>
    implements $SchemeListStateCopyWith<$Res> {
  _$SchemeListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isFetchingDetails = null,
    Object? searchKey = null,
    Object? schemes = null,
    Object? filteredSchemes = null,
    Object? schemeDetails = null,
    Object? schemesFailureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isFetchingDetails: null == isFetchingDetails
          ? _value.isFetchingDetails
          : isFetchingDetails // ignore: cast_nullable_to_non_nullable
              as bool,
      searchKey: null == searchKey
          ? _value.searchKey
          : searchKey // ignore: cast_nullable_to_non_nullable
              as String,
      schemes: null == schemes
          ? _value.schemes
          : schemes // ignore: cast_nullable_to_non_nullable
              as List<Scheme>,
      filteredSchemes: null == filteredSchemes
          ? _value.filteredSchemes
          : filteredSchemes // ignore: cast_nullable_to_non_nullable
              as List<Scheme>,
      schemeDetails: null == schemeDetails
          ? _value.schemeDetails
          : schemeDetails // ignore: cast_nullable_to_non_nullable
              as SchemeDetails,
      schemesFailureOrSuccessOption: null == schemesFailureOrSuccessOption
          ? _value.schemesFailureOrSuccessOption
          : schemesFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiFailure, dynamic>>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SchemeDetailsCopyWith<$Res> get schemeDetails {
    return $SchemeDetailsCopyWith<$Res>(_value.schemeDetails, (value) {
      return _then(_value.copyWith(schemeDetails: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SchemeListStateImplCopyWith<$Res>
    implements $SchemeListStateCopyWith<$Res> {
  factory _$$SchemeListStateImplCopyWith(_$SchemeListStateImpl value,
          $Res Function(_$SchemeListStateImpl) then) =
      __$$SchemeListStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isFetchingDetails,
      String searchKey,
      List<Scheme> schemes,
      List<Scheme> filteredSchemes,
      SchemeDetails schemeDetails,
      Option<Either<ApiFailure, dynamic>> schemesFailureOrSuccessOption});

  @override
  $SchemeDetailsCopyWith<$Res> get schemeDetails;
}

/// @nodoc
class __$$SchemeListStateImplCopyWithImpl<$Res>
    extends _$SchemeListStateCopyWithImpl<$Res, _$SchemeListStateImpl>
    implements _$$SchemeListStateImplCopyWith<$Res> {
  __$$SchemeListStateImplCopyWithImpl(
      _$SchemeListStateImpl _value, $Res Function(_$SchemeListStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isFetchingDetails = null,
    Object? searchKey = null,
    Object? schemes = null,
    Object? filteredSchemes = null,
    Object? schemeDetails = null,
    Object? schemesFailureOrSuccessOption = null,
  }) {
    return _then(_$SchemeListStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isFetchingDetails: null == isFetchingDetails
          ? _value.isFetchingDetails
          : isFetchingDetails // ignore: cast_nullable_to_non_nullable
              as bool,
      searchKey: null == searchKey
          ? _value.searchKey
          : searchKey // ignore: cast_nullable_to_non_nullable
              as String,
      schemes: null == schemes
          ? _value._schemes
          : schemes // ignore: cast_nullable_to_non_nullable
              as List<Scheme>,
      filteredSchemes: null == filteredSchemes
          ? _value._filteredSchemes
          : filteredSchemes // ignore: cast_nullable_to_non_nullable
              as List<Scheme>,
      schemeDetails: null == schemeDetails
          ? _value.schemeDetails
          : schemeDetails // ignore: cast_nullable_to_non_nullable
              as SchemeDetails,
      schemesFailureOrSuccessOption: null == schemesFailureOrSuccessOption
          ? _value.schemesFailureOrSuccessOption
          : schemesFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiFailure, dynamic>>,
    ));
  }
}

/// @nodoc

class _$SchemeListStateImpl implements _SchemeListState {
  const _$SchemeListStateImpl(
      {required this.isLoading,
      required this.isFetchingDetails,
      required this.searchKey,
      required final List<Scheme> schemes,
      required final List<Scheme> filteredSchemes,
      required this.schemeDetails,
      required this.schemesFailureOrSuccessOption})
      : _schemes = schemes,
        _filteredSchemes = filteredSchemes;

  @override
  final bool isLoading;
  @override
  final bool isFetchingDetails;
  @override
  final String searchKey;
  final List<Scheme> _schemes;
  @override
  List<Scheme> get schemes {
    if (_schemes is EqualUnmodifiableListView) return _schemes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_schemes);
  }

  final List<Scheme> _filteredSchemes;
  @override
  List<Scheme> get filteredSchemes {
    if (_filteredSchemes is EqualUnmodifiableListView) return _filteredSchemes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filteredSchemes);
  }

  @override
  final SchemeDetails schemeDetails;
  @override
  final Option<Either<ApiFailure, dynamic>> schemesFailureOrSuccessOption;

  @override
  String toString() {
    return 'SchemeListState(isLoading: $isLoading, isFetchingDetails: $isFetchingDetails, searchKey: $searchKey, schemes: $schemes, filteredSchemes: $filteredSchemes, schemeDetails: $schemeDetails, schemesFailureOrSuccessOption: $schemesFailureOrSuccessOption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SchemeListStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isFetchingDetails, isFetchingDetails) ||
                other.isFetchingDetails == isFetchingDetails) &&
            (identical(other.searchKey, searchKey) ||
                other.searchKey == searchKey) &&
            const DeepCollectionEquality().equals(other._schemes, _schemes) &&
            const DeepCollectionEquality()
                .equals(other._filteredSchemes, _filteredSchemes) &&
            (identical(other.schemeDetails, schemeDetails) ||
                other.schemeDetails == schemeDetails) &&
            (identical(other.schemesFailureOrSuccessOption,
                    schemesFailureOrSuccessOption) ||
                other.schemesFailureOrSuccessOption ==
                    schemesFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      isFetchingDetails,
      searchKey,
      const DeepCollectionEquality().hash(_schemes),
      const DeepCollectionEquality().hash(_filteredSchemes),
      schemeDetails,
      schemesFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SchemeListStateImplCopyWith<_$SchemeListStateImpl> get copyWith =>
      __$$SchemeListStateImplCopyWithImpl<_$SchemeListStateImpl>(
          this, _$identity);
}

abstract class _SchemeListState implements SchemeListState {
  const factory _SchemeListState(
      {required final bool isLoading,
      required final bool isFetchingDetails,
      required final String searchKey,
      required final List<Scheme> schemes,
      required final List<Scheme> filteredSchemes,
      required final SchemeDetails schemeDetails,
      required final Option<Either<ApiFailure, dynamic>>
          schemesFailureOrSuccessOption}) = _$SchemeListStateImpl;

  @override
  bool get isLoading;
  @override
  bool get isFetchingDetails;
  @override
  String get searchKey;
  @override
  List<Scheme> get schemes;
  @override
  List<Scheme> get filteredSchemes;
  @override
  SchemeDetails get schemeDetails;
  @override
  Option<Either<ApiFailure, dynamic>> get schemesFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$SchemeListStateImplCopyWith<_$SchemeListStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
