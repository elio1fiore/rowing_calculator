// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'one_feature_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OneFeatureState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() input,
    required TResult Function(OneInputPlayer player) result,
    required TResult Function() loading,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? input,
    TResult? Function(OneInputPlayer player)? result,
    TResult? Function()? loading,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? input,
    TResult Function(OneInputPlayer player)? result,
    TResult Function()? loading,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Input value) input,
    required TResult Function(_Result value) result,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Input value)? input,
    TResult? Function(_Result value)? result,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Input value)? input,
    TResult Function(_Result value)? result,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OneFeatureStateCopyWith<$Res> {
  factory $OneFeatureStateCopyWith(
          OneFeatureState value, $Res Function(OneFeatureState) then) =
      _$OneFeatureStateCopyWithImpl<$Res, OneFeatureState>;
}

/// @nodoc
class _$OneFeatureStateCopyWithImpl<$Res, $Val extends OneFeatureState>
    implements $OneFeatureStateCopyWith<$Res> {
  _$OneFeatureStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InputCopyWith<$Res> {
  factory _$$_InputCopyWith(_$_Input value, $Res Function(_$_Input) then) =
      __$$_InputCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InputCopyWithImpl<$Res>
    extends _$OneFeatureStateCopyWithImpl<$Res, _$_Input>
    implements _$$_InputCopyWith<$Res> {
  __$$_InputCopyWithImpl(_$_Input _value, $Res Function(_$_Input) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Input implements _Input {
  const _$_Input();

  @override
  String toString() {
    return 'OneFeatureState.input()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Input);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() input,
    required TResult Function(OneInputPlayer player) result,
    required TResult Function() loading,
    required TResult Function() error,
  }) {
    return input();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? input,
    TResult? Function(OneInputPlayer player)? result,
    TResult? Function()? loading,
    TResult? Function()? error,
  }) {
    return input?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? input,
    TResult Function(OneInputPlayer player)? result,
    TResult Function()? loading,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (input != null) {
      return input();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Input value) input,
    required TResult Function(_Result value) result,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
  }) {
    return input(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Input value)? input,
    TResult? Function(_Result value)? result,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
  }) {
    return input?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Input value)? input,
    TResult Function(_Result value)? result,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (input != null) {
      return input(this);
    }
    return orElse();
  }
}

abstract class _Input implements OneFeatureState {
  const factory _Input() = _$_Input;
}

/// @nodoc
abstract class _$$_ResultCopyWith<$Res> {
  factory _$$_ResultCopyWith(_$_Result value, $Res Function(_$_Result) then) =
      __$$_ResultCopyWithImpl<$Res>;
  @useResult
  $Res call({OneInputPlayer player});

  $OneInputPlayerCopyWith<$Res> get player;
}

/// @nodoc
class __$$_ResultCopyWithImpl<$Res>
    extends _$OneFeatureStateCopyWithImpl<$Res, _$_Result>
    implements _$$_ResultCopyWith<$Res> {
  __$$_ResultCopyWithImpl(_$_Result _value, $Res Function(_$_Result) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? player = null,
  }) {
    return _then(_$_Result(
      player: null == player
          ? _value.player
          : player // ignore: cast_nullable_to_non_nullable
              as OneInputPlayer,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $OneInputPlayerCopyWith<$Res> get player {
    return $OneInputPlayerCopyWith<$Res>(_value.player, (value) {
      return _then(_value.copyWith(player: value));
    });
  }
}

/// @nodoc

class _$_Result implements _Result {
  const _$_Result({required this.player});

  @override
  final OneInputPlayer player;

  @override
  String toString() {
    return 'OneFeatureState.result(player: $player)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Result &&
            (identical(other.player, player) || other.player == player));
  }

  @override
  int get hashCode => Object.hash(runtimeType, player);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResultCopyWith<_$_Result> get copyWith =>
      __$$_ResultCopyWithImpl<_$_Result>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() input,
    required TResult Function(OneInputPlayer player) result,
    required TResult Function() loading,
    required TResult Function() error,
  }) {
    return result(player);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? input,
    TResult? Function(OneInputPlayer player)? result,
    TResult? Function()? loading,
    TResult? Function()? error,
  }) {
    return result?.call(player);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? input,
    TResult Function(OneInputPlayer player)? result,
    TResult Function()? loading,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (result != null) {
      return result(player);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Input value) input,
    required TResult Function(_Result value) result,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
  }) {
    return result(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Input value)? input,
    TResult? Function(_Result value)? result,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
  }) {
    return result?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Input value)? input,
    TResult Function(_Result value)? result,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (result != null) {
      return result(this);
    }
    return orElse();
  }
}

abstract class _Result implements OneFeatureState {
  const factory _Result({required final OneInputPlayer player}) = _$_Result;

  OneInputPlayer get player;
  @JsonKey(ignore: true)
  _$$_ResultCopyWith<_$_Result> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$OneFeatureStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'OneFeatureState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() input,
    required TResult Function(OneInputPlayer player) result,
    required TResult Function() loading,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? input,
    TResult? Function(OneInputPlayer player)? result,
    TResult? Function()? loading,
    TResult? Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? input,
    TResult Function(OneInputPlayer player)? result,
    TResult Function()? loading,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Input value) input,
    required TResult Function(_Result value) result,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Input value)? input,
    TResult? Function(_Result value)? result,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Input value)? input,
    TResult Function(_Result value)? result,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements OneFeatureState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_ErrorCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res>
    extends _$OneFeatureStateCopyWithImpl<$Res, _$_Error>
    implements _$$_ErrorCopyWith<$Res> {
  __$$_ErrorCopyWithImpl(_$_Error _value, $Res Function(_$_Error) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error();

  @override
  String toString() {
    return 'OneFeatureState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Error);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() input,
    required TResult Function(OneInputPlayer player) result,
    required TResult Function() loading,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? input,
    TResult? Function(OneInputPlayer player)? result,
    TResult? Function()? loading,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? input,
    TResult Function(OneInputPlayer player)? result,
    TResult Function()? loading,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Input value) input,
    required TResult Function(_Result value) result,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Input value)? input,
    TResult? Function(_Result value)? result,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Input value)? input,
    TResult Function(_Result value)? result,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements OneFeatureState {
  const factory _Error() = _$_Error;
}
