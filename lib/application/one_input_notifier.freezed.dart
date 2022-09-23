// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'one_input_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OneInputState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() insertion,
    required TResult Function() calculateInProgress,
    required TResult Function() calculateSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? insertion,
    TResult Function()? calculateInProgress,
    TResult Function()? calculateSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? insertion,
    TResult Function()? calculateInProgress,
    TResult Function()? calculateSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Insertion value) insertion,
    required TResult Function(_CalculateInProgress value) calculateInProgress,
    required TResult Function(_CalculateSuccess value) calculateSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Insertion value)? insertion,
    TResult Function(_CalculateInProgress value)? calculateInProgress,
    TResult Function(_CalculateSuccess value)? calculateSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Insertion value)? insertion,
    TResult Function(_CalculateInProgress value)? calculateInProgress,
    TResult Function(_CalculateSuccess value)? calculateSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OneInputStateCopyWith<$Res> {
  factory $OneInputStateCopyWith(
          OneInputState value, $Res Function(OneInputState) then) =
      _$OneInputStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$OneInputStateCopyWithImpl<$Res>
    implements $OneInputStateCopyWith<$Res> {
  _$OneInputStateCopyWithImpl(this._value, this._then);

  final OneInputState _value;
  // ignore: unused_field
  final $Res Function(OneInputState) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res> extends _$OneInputStateCopyWithImpl<$Res>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, (v) => _then(v as _$_Initial));

  @override
  _$_Initial get _value => super._value as _$_Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'OneInputState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() insertion,
    required TResult Function() calculateInProgress,
    required TResult Function() calculateSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? insertion,
    TResult Function()? calculateInProgress,
    TResult Function()? calculateSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? insertion,
    TResult Function()? calculateInProgress,
    TResult Function()? calculateSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Insertion value) insertion,
    required TResult Function(_CalculateInProgress value) calculateInProgress,
    required TResult Function(_CalculateSuccess value) calculateSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Insertion value)? insertion,
    TResult Function(_CalculateInProgress value)? calculateInProgress,
    TResult Function(_CalculateSuccess value)? calculateSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Insertion value)? insertion,
    TResult Function(_CalculateInProgress value)? calculateInProgress,
    TResult Function(_CalculateSuccess value)? calculateSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements OneInputState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_InsertionCopyWith<$Res> {
  factory _$$_InsertionCopyWith(
          _$_Insertion value, $Res Function(_$_Insertion) then) =
      __$$_InsertionCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InsertionCopyWithImpl<$Res> extends _$OneInputStateCopyWithImpl<$Res>
    implements _$$_InsertionCopyWith<$Res> {
  __$$_InsertionCopyWithImpl(
      _$_Insertion _value, $Res Function(_$_Insertion) _then)
      : super(_value, (v) => _then(v as _$_Insertion));

  @override
  _$_Insertion get _value => super._value as _$_Insertion;
}

/// @nodoc

class _$_Insertion implements _Insertion {
  const _$_Insertion();

  @override
  String toString() {
    return 'OneInputState.insertion()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Insertion);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() insertion,
    required TResult Function() calculateInProgress,
    required TResult Function() calculateSuccess,
  }) {
    return insertion();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? insertion,
    TResult Function()? calculateInProgress,
    TResult Function()? calculateSuccess,
  }) {
    return insertion?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? insertion,
    TResult Function()? calculateInProgress,
    TResult Function()? calculateSuccess,
    required TResult orElse(),
  }) {
    if (insertion != null) {
      return insertion();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Insertion value) insertion,
    required TResult Function(_CalculateInProgress value) calculateInProgress,
    required TResult Function(_CalculateSuccess value) calculateSuccess,
  }) {
    return insertion(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Insertion value)? insertion,
    TResult Function(_CalculateInProgress value)? calculateInProgress,
    TResult Function(_CalculateSuccess value)? calculateSuccess,
  }) {
    return insertion?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Insertion value)? insertion,
    TResult Function(_CalculateInProgress value)? calculateInProgress,
    TResult Function(_CalculateSuccess value)? calculateSuccess,
    required TResult orElse(),
  }) {
    if (insertion != null) {
      return insertion(this);
    }
    return orElse();
  }
}

abstract class _Insertion implements OneInputState {
  const factory _Insertion() = _$_Insertion;
}

/// @nodoc
abstract class _$$_CalculateInProgressCopyWith<$Res> {
  factory _$$_CalculateInProgressCopyWith(_$_CalculateInProgress value,
          $Res Function(_$_CalculateInProgress) then) =
      __$$_CalculateInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CalculateInProgressCopyWithImpl<$Res>
    extends _$OneInputStateCopyWithImpl<$Res>
    implements _$$_CalculateInProgressCopyWith<$Res> {
  __$$_CalculateInProgressCopyWithImpl(_$_CalculateInProgress _value,
      $Res Function(_$_CalculateInProgress) _then)
      : super(_value, (v) => _then(v as _$_CalculateInProgress));

  @override
  _$_CalculateInProgress get _value => super._value as _$_CalculateInProgress;
}

/// @nodoc

class _$_CalculateInProgress implements _CalculateInProgress {
  const _$_CalculateInProgress();

  @override
  String toString() {
    return 'OneInputState.calculateInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CalculateInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() insertion,
    required TResult Function() calculateInProgress,
    required TResult Function() calculateSuccess,
  }) {
    return calculateInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? insertion,
    TResult Function()? calculateInProgress,
    TResult Function()? calculateSuccess,
  }) {
    return calculateInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? insertion,
    TResult Function()? calculateInProgress,
    TResult Function()? calculateSuccess,
    required TResult orElse(),
  }) {
    if (calculateInProgress != null) {
      return calculateInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Insertion value) insertion,
    required TResult Function(_CalculateInProgress value) calculateInProgress,
    required TResult Function(_CalculateSuccess value) calculateSuccess,
  }) {
    return calculateInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Insertion value)? insertion,
    TResult Function(_CalculateInProgress value)? calculateInProgress,
    TResult Function(_CalculateSuccess value)? calculateSuccess,
  }) {
    return calculateInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Insertion value)? insertion,
    TResult Function(_CalculateInProgress value)? calculateInProgress,
    TResult Function(_CalculateSuccess value)? calculateSuccess,
    required TResult orElse(),
  }) {
    if (calculateInProgress != null) {
      return calculateInProgress(this);
    }
    return orElse();
  }
}

abstract class _CalculateInProgress implements OneInputState {
  const factory _CalculateInProgress() = _$_CalculateInProgress;
}

/// @nodoc
abstract class _$$_CalculateSuccessCopyWith<$Res> {
  factory _$$_CalculateSuccessCopyWith(
          _$_CalculateSuccess value, $Res Function(_$_CalculateSuccess) then) =
      __$$_CalculateSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CalculateSuccessCopyWithImpl<$Res>
    extends _$OneInputStateCopyWithImpl<$Res>
    implements _$$_CalculateSuccessCopyWith<$Res> {
  __$$_CalculateSuccessCopyWithImpl(
      _$_CalculateSuccess _value, $Res Function(_$_CalculateSuccess) _then)
      : super(_value, (v) => _then(v as _$_CalculateSuccess));

  @override
  _$_CalculateSuccess get _value => super._value as _$_CalculateSuccess;
}

/// @nodoc

class _$_CalculateSuccess implements _CalculateSuccess {
  const _$_CalculateSuccess();

  @override
  String toString() {
    return 'OneInputState.calculateSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CalculateSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() insertion,
    required TResult Function() calculateInProgress,
    required TResult Function() calculateSuccess,
  }) {
    return calculateSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? insertion,
    TResult Function()? calculateInProgress,
    TResult Function()? calculateSuccess,
  }) {
    return calculateSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? insertion,
    TResult Function()? calculateInProgress,
    TResult Function()? calculateSuccess,
    required TResult orElse(),
  }) {
    if (calculateSuccess != null) {
      return calculateSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Insertion value) insertion,
    required TResult Function(_CalculateInProgress value) calculateInProgress,
    required TResult Function(_CalculateSuccess value) calculateSuccess,
  }) {
    return calculateSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Insertion value)? insertion,
    TResult Function(_CalculateInProgress value)? calculateInProgress,
    TResult Function(_CalculateSuccess value)? calculateSuccess,
  }) {
    return calculateSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Insertion value)? insertion,
    TResult Function(_CalculateInProgress value)? calculateInProgress,
    TResult Function(_CalculateSuccess value)? calculateSuccess,
    required TResult orElse(),
  }) {
    if (calculateSuccess != null) {
      return calculateSuccess(this);
    }
    return orElse();
  }
}

abstract class _CalculateSuccess implements OneInputState {
  const factory _CalculateSuccess() = _$_CalculateSuccess;
}
