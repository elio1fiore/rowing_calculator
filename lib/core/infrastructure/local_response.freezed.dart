// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'local_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LocalResponse<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data, int maxPage) withNewData,
    required TResult Function() problemDB,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data, int maxPage)? withNewData,
    TResult? Function()? problemDB,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data, int maxPage)? withNewData,
    TResult Function()? problemDB,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WithNewData<T> value) withNewData,
    required TResult Function(_ProblemDB<T> value) problemDB,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WithNewData<T> value)? withNewData,
    TResult? Function(_ProblemDB<T> value)? problemDB,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WithNewData<T> value)? withNewData,
    TResult Function(_ProblemDB<T> value)? problemDB,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalResponseCopyWith<T, $Res> {
  factory $LocalResponseCopyWith(
          LocalResponse<T> value, $Res Function(LocalResponse<T>) then) =
      _$LocalResponseCopyWithImpl<T, $Res, LocalResponse<T>>;
}

/// @nodoc
class _$LocalResponseCopyWithImpl<T, $Res, $Val extends LocalResponse<T>>
    implements $LocalResponseCopyWith<T, $Res> {
  _$LocalResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_WithNewDataCopyWith<T, $Res> {
  factory _$$_WithNewDataCopyWith(
          _$_WithNewData<T> value, $Res Function(_$_WithNewData<T>) then) =
      __$$_WithNewDataCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data, int maxPage});
}

/// @nodoc
class __$$_WithNewDataCopyWithImpl<T, $Res>
    extends _$LocalResponseCopyWithImpl<T, $Res, _$_WithNewData<T>>
    implements _$$_WithNewDataCopyWith<T, $Res> {
  __$$_WithNewDataCopyWithImpl(
      _$_WithNewData<T> _value, $Res Function(_$_WithNewData<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? maxPage = null,
  }) {
    return _then(_$_WithNewData<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
      maxPage: null == maxPage
          ? _value.maxPage
          : maxPage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_WithNewData<T> implements _WithNewData<T> {
  const _$_WithNewData(this.data, {required this.maxPage});

  @override
  final T data;
  @override
  final int maxPage;

  @override
  String toString() {
    return 'LocalResponse<$T>.withNewData(data: $data, maxPage: $maxPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WithNewData<T> &&
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.maxPage, maxPage) || other.maxPage == maxPage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(data), maxPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WithNewDataCopyWith<T, _$_WithNewData<T>> get copyWith =>
      __$$_WithNewDataCopyWithImpl<T, _$_WithNewData<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data, int maxPage) withNewData,
    required TResult Function() problemDB,
  }) {
    return withNewData(data, maxPage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data, int maxPage)? withNewData,
    TResult? Function()? problemDB,
  }) {
    return withNewData?.call(data, maxPage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data, int maxPage)? withNewData,
    TResult Function()? problemDB,
    required TResult orElse(),
  }) {
    if (withNewData != null) {
      return withNewData(data, maxPage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WithNewData<T> value) withNewData,
    required TResult Function(_ProblemDB<T> value) problemDB,
  }) {
    return withNewData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WithNewData<T> value)? withNewData,
    TResult? Function(_ProblemDB<T> value)? problemDB,
  }) {
    return withNewData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WithNewData<T> value)? withNewData,
    TResult Function(_ProblemDB<T> value)? problemDB,
    required TResult orElse(),
  }) {
    if (withNewData != null) {
      return withNewData(this);
    }
    return orElse();
  }
}

abstract class _WithNewData<T> implements LocalResponse<T> {
  const factory _WithNewData(final T data, {required final int maxPage}) =
      _$_WithNewData<T>;

  T get data;
  int get maxPage;
  @JsonKey(ignore: true)
  _$$_WithNewDataCopyWith<T, _$_WithNewData<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ProblemDBCopyWith<T, $Res> {
  factory _$$_ProblemDBCopyWith(
          _$_ProblemDB<T> value, $Res Function(_$_ProblemDB<T>) then) =
      __$$_ProblemDBCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$_ProblemDBCopyWithImpl<T, $Res>
    extends _$LocalResponseCopyWithImpl<T, $Res, _$_ProblemDB<T>>
    implements _$$_ProblemDBCopyWith<T, $Res> {
  __$$_ProblemDBCopyWithImpl(
      _$_ProblemDB<T> _value, $Res Function(_$_ProblemDB<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ProblemDB<T> implements _ProblemDB<T> {
  const _$_ProblemDB();

  @override
  String toString() {
    return 'LocalResponse<$T>.problemDB()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ProblemDB<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data, int maxPage) withNewData,
    required TResult Function() problemDB,
  }) {
    return problemDB();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data, int maxPage)? withNewData,
    TResult? Function()? problemDB,
  }) {
    return problemDB?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data, int maxPage)? withNewData,
    TResult Function()? problemDB,
    required TResult orElse(),
  }) {
    if (problemDB != null) {
      return problemDB();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WithNewData<T> value) withNewData,
    required TResult Function(_ProblemDB<T> value) problemDB,
  }) {
    return problemDB(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WithNewData<T> value)? withNewData,
    TResult? Function(_ProblemDB<T> value)? problemDB,
  }) {
    return problemDB?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WithNewData<T> value)? withNewData,
    TResult Function(_ProblemDB<T> value)? problemDB,
    required TResult orElse(),
  }) {
    if (problemDB != null) {
      return problemDB(this);
    }
    return orElse();
  }
}

abstract class _ProblemDB<T> implements LocalResponse<T> {
  const factory _ProblemDB() = _$_ProblemDB<T>;
}
