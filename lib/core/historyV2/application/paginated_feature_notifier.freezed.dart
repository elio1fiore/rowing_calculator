// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'paginated_feature_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PaginatedFeatureState {
  Fresh<List<Feature>> get features => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Fresh<List<Feature>> features) initial,
    required TResult Function(Fresh<List<Feature>> features, int itemsPerPage)
        loadInProgress,
    required TResult Function(
            Fresh<List<Feature>> features, HistoryFailure failure)
        loadFailure,
    required TResult Function(Fresh<List<Feature>> features, bool hasNextPage)
        loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Fresh<List<Feature>> features)? initial,
    TResult? Function(Fresh<List<Feature>> features, int itemsPerPage)?
        loadInProgress,
    TResult? Function(Fresh<List<Feature>> features, HistoryFailure failure)?
        loadFailure,
    TResult? Function(Fresh<List<Feature>> features, bool hasNextPage)?
        loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Fresh<List<Feature>> features)? initial,
    TResult Function(Fresh<List<Feature>> features, int itemsPerPage)?
        loadInProgress,
    TResult Function(Fresh<List<Feature>> features, HistoryFailure failure)?
        loadFailure,
    TResult Function(Fresh<List<Feature>> features, bool hasNextPage)?
        loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_LoadSuccess value) loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadFailure value)? loadFailure,
    TResult? Function(_LoadSuccess value)? loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_LoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaginatedFeatureStateCopyWith<PaginatedFeatureState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginatedFeatureStateCopyWith<$Res> {
  factory $PaginatedFeatureStateCopyWith(PaginatedFeatureState value,
          $Res Function(PaginatedFeatureState) then) =
      _$PaginatedFeatureStateCopyWithImpl<$Res, PaginatedFeatureState>;
  @useResult
  $Res call({Fresh<List<Feature>> features});

  $FreshCopyWith<List<Feature>, $Res> get features;
}

/// @nodoc
class _$PaginatedFeatureStateCopyWithImpl<$Res,
        $Val extends PaginatedFeatureState>
    implements $PaginatedFeatureStateCopyWith<$Res> {
  _$PaginatedFeatureStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? features = null,
  }) {
    return _then(_value.copyWith(
      features: null == features
          ? _value.features
          : features // ignore: cast_nullable_to_non_nullable
              as Fresh<List<Feature>>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FreshCopyWith<List<Feature>, $Res> get features {
    return $FreshCopyWith<List<Feature>, $Res>(_value.features, (value) {
      return _then(_value.copyWith(features: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $PaginatedFeatureStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Fresh<List<Feature>> features});

  @override
  $FreshCopyWith<List<Feature>, $Res> get features;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$PaginatedFeatureStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? features = null,
  }) {
    return _then(_$_Initial(
      null == features
          ? _value.features
          : features // ignore: cast_nullable_to_non_nullable
              as Fresh<List<Feature>>,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(this.features);

  @override
  final Fresh<List<Feature>> features;

  @override
  String toString() {
    return 'PaginatedFeatureState.initial(features: $features)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.features, features) ||
                other.features == features));
  }

  @override
  int get hashCode => Object.hash(runtimeType, features);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Fresh<List<Feature>> features) initial,
    required TResult Function(Fresh<List<Feature>> features, int itemsPerPage)
        loadInProgress,
    required TResult Function(
            Fresh<List<Feature>> features, HistoryFailure failure)
        loadFailure,
    required TResult Function(Fresh<List<Feature>> features, bool hasNextPage)
        loadSuccess,
  }) {
    return initial(features);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Fresh<List<Feature>> features)? initial,
    TResult? Function(Fresh<List<Feature>> features, int itemsPerPage)?
        loadInProgress,
    TResult? Function(Fresh<List<Feature>> features, HistoryFailure failure)?
        loadFailure,
    TResult? Function(Fresh<List<Feature>> features, bool hasNextPage)?
        loadSuccess,
  }) {
    return initial?.call(features);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Fresh<List<Feature>> features)? initial,
    TResult Function(Fresh<List<Feature>> features, int itemsPerPage)?
        loadInProgress,
    TResult Function(Fresh<List<Feature>> features, HistoryFailure failure)?
        loadFailure,
    TResult Function(Fresh<List<Feature>> features, bool hasNextPage)?
        loadSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(features);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_LoadSuccess value) loadSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadFailure value)? loadFailure,
    TResult? Function(_LoadSuccess value)? loadSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_LoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements PaginatedFeatureState {
  const factory _Initial(final Fresh<List<Feature>> features) = _$_Initial;

  @override
  Fresh<List<Feature>> get features;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadInProgressCopyWith<$Res>
    implements $PaginatedFeatureStateCopyWith<$Res> {
  factory _$$_LoadInProgressCopyWith(
          _$_LoadInProgress value, $Res Function(_$_LoadInProgress) then) =
      __$$_LoadInProgressCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Fresh<List<Feature>> features, int itemsPerPage});

  @override
  $FreshCopyWith<List<Feature>, $Res> get features;
}

/// @nodoc
class __$$_LoadInProgressCopyWithImpl<$Res>
    extends _$PaginatedFeatureStateCopyWithImpl<$Res, _$_LoadInProgress>
    implements _$$_LoadInProgressCopyWith<$Res> {
  __$$_LoadInProgressCopyWithImpl(
      _$_LoadInProgress _value, $Res Function(_$_LoadInProgress) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? features = null,
    Object? itemsPerPage = null,
  }) {
    return _then(_$_LoadInProgress(
      null == features
          ? _value.features
          : features // ignore: cast_nullable_to_non_nullable
              as Fresh<List<Feature>>,
      null == itemsPerPage
          ? _value.itemsPerPage
          : itemsPerPage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_LoadInProgress implements _LoadInProgress {
  const _$_LoadInProgress(this.features, this.itemsPerPage);

  @override
  final Fresh<List<Feature>> features;
  @override
  final int itemsPerPage;

  @override
  String toString() {
    return 'PaginatedFeatureState.loadInProgress(features: $features, itemsPerPage: $itemsPerPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadInProgress &&
            (identical(other.features, features) ||
                other.features == features) &&
            (identical(other.itemsPerPage, itemsPerPage) ||
                other.itemsPerPage == itemsPerPage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, features, itemsPerPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadInProgressCopyWith<_$_LoadInProgress> get copyWith =>
      __$$_LoadInProgressCopyWithImpl<_$_LoadInProgress>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Fresh<List<Feature>> features) initial,
    required TResult Function(Fresh<List<Feature>> features, int itemsPerPage)
        loadInProgress,
    required TResult Function(
            Fresh<List<Feature>> features, HistoryFailure failure)
        loadFailure,
    required TResult Function(Fresh<List<Feature>> features, bool hasNextPage)
        loadSuccess,
  }) {
    return loadInProgress(features, itemsPerPage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Fresh<List<Feature>> features)? initial,
    TResult? Function(Fresh<List<Feature>> features, int itemsPerPage)?
        loadInProgress,
    TResult? Function(Fresh<List<Feature>> features, HistoryFailure failure)?
        loadFailure,
    TResult? Function(Fresh<List<Feature>> features, bool hasNextPage)?
        loadSuccess,
  }) {
    return loadInProgress?.call(features, itemsPerPage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Fresh<List<Feature>> features)? initial,
    TResult Function(Fresh<List<Feature>> features, int itemsPerPage)?
        loadInProgress,
    TResult Function(Fresh<List<Feature>> features, HistoryFailure failure)?
        loadFailure,
    TResult Function(Fresh<List<Feature>> features, bool hasNextPage)?
        loadSuccess,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(features, itemsPerPage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_LoadSuccess value) loadSuccess,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadFailure value)? loadFailure,
    TResult? Function(_LoadSuccess value)? loadSuccess,
  }) {
    return loadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_LoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements PaginatedFeatureState {
  const factory _LoadInProgress(
          final Fresh<List<Feature>> features, final int itemsPerPage) =
      _$_LoadInProgress;

  @override
  Fresh<List<Feature>> get features;
  int get itemsPerPage;
  @override
  @JsonKey(ignore: true)
  _$$_LoadInProgressCopyWith<_$_LoadInProgress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadFailureCopyWith<$Res>
    implements $PaginatedFeatureStateCopyWith<$Res> {
  factory _$$_LoadFailureCopyWith(
          _$_LoadFailure value, $Res Function(_$_LoadFailure) then) =
      __$$_LoadFailureCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Fresh<List<Feature>> features, HistoryFailure failure});

  @override
  $FreshCopyWith<List<Feature>, $Res> get features;
  $HistoryFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$_LoadFailureCopyWithImpl<$Res>
    extends _$PaginatedFeatureStateCopyWithImpl<$Res, _$_LoadFailure>
    implements _$$_LoadFailureCopyWith<$Res> {
  __$$_LoadFailureCopyWithImpl(
      _$_LoadFailure _value, $Res Function(_$_LoadFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? features = null,
    Object? failure = null,
  }) {
    return _then(_$_LoadFailure(
      null == features
          ? _value.features
          : features // ignore: cast_nullable_to_non_nullable
              as Fresh<List<Feature>>,
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as HistoryFailure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $HistoryFailureCopyWith<$Res> get failure {
    return $HistoryFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.features, this.failure);

  @override
  final Fresh<List<Feature>> features;
  @override
  final HistoryFailure failure;

  @override
  String toString() {
    return 'PaginatedFeatureState.loadFailure(features: $features, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadFailure &&
            (identical(other.features, features) ||
                other.features == features) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, features, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadFailureCopyWith<_$_LoadFailure> get copyWith =>
      __$$_LoadFailureCopyWithImpl<_$_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Fresh<List<Feature>> features) initial,
    required TResult Function(Fresh<List<Feature>> features, int itemsPerPage)
        loadInProgress,
    required TResult Function(
            Fresh<List<Feature>> features, HistoryFailure failure)
        loadFailure,
    required TResult Function(Fresh<List<Feature>> features, bool hasNextPage)
        loadSuccess,
  }) {
    return loadFailure(features, failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Fresh<List<Feature>> features)? initial,
    TResult? Function(Fresh<List<Feature>> features, int itemsPerPage)?
        loadInProgress,
    TResult? Function(Fresh<List<Feature>> features, HistoryFailure failure)?
        loadFailure,
    TResult? Function(Fresh<List<Feature>> features, bool hasNextPage)?
        loadSuccess,
  }) {
    return loadFailure?.call(features, failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Fresh<List<Feature>> features)? initial,
    TResult Function(Fresh<List<Feature>> features, int itemsPerPage)?
        loadInProgress,
    TResult Function(Fresh<List<Feature>> features, HistoryFailure failure)?
        loadFailure,
    TResult Function(Fresh<List<Feature>> features, bool hasNextPage)?
        loadSuccess,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(features, failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_LoadSuccess value) loadSuccess,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadFailure value)? loadFailure,
    TResult? Function(_LoadSuccess value)? loadSuccess,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_LoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure implements PaginatedFeatureState {
  const factory _LoadFailure(
          final Fresh<List<Feature>> features, final HistoryFailure failure) =
      _$_LoadFailure;

  @override
  Fresh<List<Feature>> get features;
  HistoryFailure get failure;
  @override
  @JsonKey(ignore: true)
  _$$_LoadFailureCopyWith<_$_LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadSuccessCopyWith<$Res>
    implements $PaginatedFeatureStateCopyWith<$Res> {
  factory _$$_LoadSuccessCopyWith(
          _$_LoadSuccess value, $Res Function(_$_LoadSuccess) then) =
      __$$_LoadSuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Fresh<List<Feature>> features, bool hasNextPage});

  @override
  $FreshCopyWith<List<Feature>, $Res> get features;
}

/// @nodoc
class __$$_LoadSuccessCopyWithImpl<$Res>
    extends _$PaginatedFeatureStateCopyWithImpl<$Res, _$_LoadSuccess>
    implements _$$_LoadSuccessCopyWith<$Res> {
  __$$_LoadSuccessCopyWithImpl(
      _$_LoadSuccess _value, $Res Function(_$_LoadSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? features = null,
    Object? hasNextPage = null,
  }) {
    return _then(_$_LoadSuccess(
      null == features
          ? _value.features
          : features // ignore: cast_nullable_to_non_nullable
              as Fresh<List<Feature>>,
      hasNextPage: null == hasNextPage
          ? _value.hasNextPage
          : hasNextPage // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.features, {required this.hasNextPage});

  @override
  final Fresh<List<Feature>> features;
  @override
  final bool hasNextPage;

  @override
  String toString() {
    return 'PaginatedFeatureState.loadSuccess(features: $features, hasNextPage: $hasNextPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadSuccess &&
            (identical(other.features, features) ||
                other.features == features) &&
            (identical(other.hasNextPage, hasNextPage) ||
                other.hasNextPage == hasNextPage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, features, hasNextPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadSuccessCopyWith<_$_LoadSuccess> get copyWith =>
      __$$_LoadSuccessCopyWithImpl<_$_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Fresh<List<Feature>> features) initial,
    required TResult Function(Fresh<List<Feature>> features, int itemsPerPage)
        loadInProgress,
    required TResult Function(
            Fresh<List<Feature>> features, HistoryFailure failure)
        loadFailure,
    required TResult Function(Fresh<List<Feature>> features, bool hasNextPage)
        loadSuccess,
  }) {
    return loadSuccess(features, hasNextPage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Fresh<List<Feature>> features)? initial,
    TResult? Function(Fresh<List<Feature>> features, int itemsPerPage)?
        loadInProgress,
    TResult? Function(Fresh<List<Feature>> features, HistoryFailure failure)?
        loadFailure,
    TResult? Function(Fresh<List<Feature>> features, bool hasNextPage)?
        loadSuccess,
  }) {
    return loadSuccess?.call(features, hasNextPage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Fresh<List<Feature>> features)? initial,
    TResult Function(Fresh<List<Feature>> features, int itemsPerPage)?
        loadInProgress,
    TResult Function(Fresh<List<Feature>> features, HistoryFailure failure)?
        loadFailure,
    TResult Function(Fresh<List<Feature>> features, bool hasNextPage)?
        loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(features, hasNextPage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_LoadSuccess value) loadSuccess,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadFailure value)? loadFailure,
    TResult? Function(_LoadSuccess value)? loadSuccess,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_LoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess implements PaginatedFeatureState {
  const factory _LoadSuccess(final Fresh<List<Feature>> features,
      {required final bool hasNextPage}) = _$_LoadSuccess;

  @override
  Fresh<List<Feature>> get features;
  bool get hasNextPage;
  @override
  @JsonKey(ignore: true)
  _$$_LoadSuccessCopyWith<_$_LoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}
