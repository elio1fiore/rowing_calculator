// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'two_feature_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TwoFeatureState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() input,
    required TResult Function(TwoInputPlayer1 player) resultOne,
    required TResult Function(TwoInputPlayer2 player) resultTwo,
    required TResult Function() loading,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? input,
    TResult? Function(TwoInputPlayer1 player)? resultOne,
    TResult? Function(TwoInputPlayer2 player)? resultTwo,
    TResult? Function()? loading,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? input,
    TResult Function(TwoInputPlayer1 player)? resultOne,
    TResult Function(TwoInputPlayer2 player)? resultTwo,
    TResult Function()? loading,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Input value) input,
    required TResult Function(_ResultOne value) resultOne,
    required TResult Function(_ResultTwo value) resultTwo,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Input value)? input,
    TResult? Function(_ResultOne value)? resultOne,
    TResult? Function(_ResultTwo value)? resultTwo,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Input value)? input,
    TResult Function(_ResultOne value)? resultOne,
    TResult Function(_ResultTwo value)? resultTwo,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TwoFeatureStateCopyWith<$Res> {
  factory $TwoFeatureStateCopyWith(
          TwoFeatureState value, $Res Function(TwoFeatureState) then) =
      _$TwoFeatureStateCopyWithImpl<$Res, TwoFeatureState>;
}

/// @nodoc
class _$TwoFeatureStateCopyWithImpl<$Res, $Val extends TwoFeatureState>
    implements $TwoFeatureStateCopyWith<$Res> {
  _$TwoFeatureStateCopyWithImpl(this._value, this._then);

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
    extends _$TwoFeatureStateCopyWithImpl<$Res, _$_Input>
    implements _$$_InputCopyWith<$Res> {
  __$$_InputCopyWithImpl(_$_Input _value, $Res Function(_$_Input) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Input implements _Input {
  const _$_Input();

  @override
  String toString() {
    return 'TwoFeatureState.input()';
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
    required TResult Function(TwoInputPlayer1 player) resultOne,
    required TResult Function(TwoInputPlayer2 player) resultTwo,
    required TResult Function() loading,
    required TResult Function() error,
  }) {
    return input();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? input,
    TResult? Function(TwoInputPlayer1 player)? resultOne,
    TResult? Function(TwoInputPlayer2 player)? resultTwo,
    TResult? Function()? loading,
    TResult? Function()? error,
  }) {
    return input?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? input,
    TResult Function(TwoInputPlayer1 player)? resultOne,
    TResult Function(TwoInputPlayer2 player)? resultTwo,
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
    required TResult Function(_ResultOne value) resultOne,
    required TResult Function(_ResultTwo value) resultTwo,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
  }) {
    return input(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Input value)? input,
    TResult? Function(_ResultOne value)? resultOne,
    TResult? Function(_ResultTwo value)? resultTwo,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
  }) {
    return input?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Input value)? input,
    TResult Function(_ResultOne value)? resultOne,
    TResult Function(_ResultTwo value)? resultTwo,
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

abstract class _Input implements TwoFeatureState {
  const factory _Input() = _$_Input;
}

/// @nodoc
abstract class _$$_ResultOneCopyWith<$Res> {
  factory _$$_ResultOneCopyWith(
          _$_ResultOne value, $Res Function(_$_ResultOne) then) =
      __$$_ResultOneCopyWithImpl<$Res>;
  @useResult
  $Res call({TwoInputPlayer1 player});

  $TwoInputPlayer1CopyWith<$Res> get player;
}

/// @nodoc
class __$$_ResultOneCopyWithImpl<$Res>
    extends _$TwoFeatureStateCopyWithImpl<$Res, _$_ResultOne>
    implements _$$_ResultOneCopyWith<$Res> {
  __$$_ResultOneCopyWithImpl(
      _$_ResultOne _value, $Res Function(_$_ResultOne) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? player = null,
  }) {
    return _then(_$_ResultOne(
      null == player
          ? _value.player
          : player // ignore: cast_nullable_to_non_nullable
              as TwoInputPlayer1,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TwoInputPlayer1CopyWith<$Res> get player {
    return $TwoInputPlayer1CopyWith<$Res>(_value.player, (value) {
      return _then(_value.copyWith(player: value));
    });
  }
}

/// @nodoc

class _$_ResultOne implements _ResultOne {
  const _$_ResultOne(this.player);

  @override
  final TwoInputPlayer1 player;

  @override
  String toString() {
    return 'TwoFeatureState.resultOne(player: $player)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResultOne &&
            (identical(other.player, player) || other.player == player));
  }

  @override
  int get hashCode => Object.hash(runtimeType, player);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResultOneCopyWith<_$_ResultOne> get copyWith =>
      __$$_ResultOneCopyWithImpl<_$_ResultOne>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() input,
    required TResult Function(TwoInputPlayer1 player) resultOne,
    required TResult Function(TwoInputPlayer2 player) resultTwo,
    required TResult Function() loading,
    required TResult Function() error,
  }) {
    return resultOne(player);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? input,
    TResult? Function(TwoInputPlayer1 player)? resultOne,
    TResult? Function(TwoInputPlayer2 player)? resultTwo,
    TResult? Function()? loading,
    TResult? Function()? error,
  }) {
    return resultOne?.call(player);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? input,
    TResult Function(TwoInputPlayer1 player)? resultOne,
    TResult Function(TwoInputPlayer2 player)? resultTwo,
    TResult Function()? loading,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (resultOne != null) {
      return resultOne(player);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Input value) input,
    required TResult Function(_ResultOne value) resultOne,
    required TResult Function(_ResultTwo value) resultTwo,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
  }) {
    return resultOne(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Input value)? input,
    TResult? Function(_ResultOne value)? resultOne,
    TResult? Function(_ResultTwo value)? resultTwo,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
  }) {
    return resultOne?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Input value)? input,
    TResult Function(_ResultOne value)? resultOne,
    TResult Function(_ResultTwo value)? resultTwo,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (resultOne != null) {
      return resultOne(this);
    }
    return orElse();
  }
}

abstract class _ResultOne implements TwoFeatureState {
  const factory _ResultOne(final TwoInputPlayer1 player) = _$_ResultOne;

  TwoInputPlayer1 get player;
  @JsonKey(ignore: true)
  _$$_ResultOneCopyWith<_$_ResultOne> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ResultTwoCopyWith<$Res> {
  factory _$$_ResultTwoCopyWith(
          _$_ResultTwo value, $Res Function(_$_ResultTwo) then) =
      __$$_ResultTwoCopyWithImpl<$Res>;
  @useResult
  $Res call({TwoInputPlayer2 player});

  $TwoInputPlayer2CopyWith<$Res> get player;
}

/// @nodoc
class __$$_ResultTwoCopyWithImpl<$Res>
    extends _$TwoFeatureStateCopyWithImpl<$Res, _$_ResultTwo>
    implements _$$_ResultTwoCopyWith<$Res> {
  __$$_ResultTwoCopyWithImpl(
      _$_ResultTwo _value, $Res Function(_$_ResultTwo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? player = null,
  }) {
    return _then(_$_ResultTwo(
      null == player
          ? _value.player
          : player // ignore: cast_nullable_to_non_nullable
              as TwoInputPlayer2,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TwoInputPlayer2CopyWith<$Res> get player {
    return $TwoInputPlayer2CopyWith<$Res>(_value.player, (value) {
      return _then(_value.copyWith(player: value));
    });
  }
}

/// @nodoc

class _$_ResultTwo implements _ResultTwo {
  const _$_ResultTwo(this.player);

  @override
  final TwoInputPlayer2 player;

  @override
  String toString() {
    return 'TwoFeatureState.resultTwo(player: $player)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResultTwo &&
            (identical(other.player, player) || other.player == player));
  }

  @override
  int get hashCode => Object.hash(runtimeType, player);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResultTwoCopyWith<_$_ResultTwo> get copyWith =>
      __$$_ResultTwoCopyWithImpl<_$_ResultTwo>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() input,
    required TResult Function(TwoInputPlayer1 player) resultOne,
    required TResult Function(TwoInputPlayer2 player) resultTwo,
    required TResult Function() loading,
    required TResult Function() error,
  }) {
    return resultTwo(player);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? input,
    TResult? Function(TwoInputPlayer1 player)? resultOne,
    TResult? Function(TwoInputPlayer2 player)? resultTwo,
    TResult? Function()? loading,
    TResult? Function()? error,
  }) {
    return resultTwo?.call(player);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? input,
    TResult Function(TwoInputPlayer1 player)? resultOne,
    TResult Function(TwoInputPlayer2 player)? resultTwo,
    TResult Function()? loading,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (resultTwo != null) {
      return resultTwo(player);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Input value) input,
    required TResult Function(_ResultOne value) resultOne,
    required TResult Function(_ResultTwo value) resultTwo,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
  }) {
    return resultTwo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Input value)? input,
    TResult? Function(_ResultOne value)? resultOne,
    TResult? Function(_ResultTwo value)? resultTwo,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
  }) {
    return resultTwo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Input value)? input,
    TResult Function(_ResultOne value)? resultOne,
    TResult Function(_ResultTwo value)? resultTwo,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (resultTwo != null) {
      return resultTwo(this);
    }
    return orElse();
  }
}

abstract class _ResultTwo implements TwoFeatureState {
  const factory _ResultTwo(final TwoInputPlayer2 player) = _$_ResultTwo;

  TwoInputPlayer2 get player;
  @JsonKey(ignore: true)
  _$$_ResultTwoCopyWith<_$_ResultTwo> get copyWith =>
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
    extends _$TwoFeatureStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'TwoFeatureState.loading()';
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
    required TResult Function(TwoInputPlayer1 player) resultOne,
    required TResult Function(TwoInputPlayer2 player) resultTwo,
    required TResult Function() loading,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? input,
    TResult? Function(TwoInputPlayer1 player)? resultOne,
    TResult? Function(TwoInputPlayer2 player)? resultTwo,
    TResult? Function()? loading,
    TResult? Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? input,
    TResult Function(TwoInputPlayer1 player)? resultOne,
    TResult Function(TwoInputPlayer2 player)? resultTwo,
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
    required TResult Function(_ResultOne value) resultOne,
    required TResult Function(_ResultTwo value) resultTwo,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Input value)? input,
    TResult? Function(_ResultOne value)? resultOne,
    TResult? Function(_ResultTwo value)? resultTwo,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Input value)? input,
    TResult Function(_ResultOne value)? resultOne,
    TResult Function(_ResultTwo value)? resultTwo,
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

abstract class _Loading implements TwoFeatureState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_ErrorCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res>
    extends _$TwoFeatureStateCopyWithImpl<$Res, _$_Error>
    implements _$$_ErrorCopyWith<$Res> {
  __$$_ErrorCopyWithImpl(_$_Error _value, $Res Function(_$_Error) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error();

  @override
  String toString() {
    return 'TwoFeatureState.error()';
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
    required TResult Function(TwoInputPlayer1 player) resultOne,
    required TResult Function(TwoInputPlayer2 player) resultTwo,
    required TResult Function() loading,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? input,
    TResult? Function(TwoInputPlayer1 player)? resultOne,
    TResult? Function(TwoInputPlayer2 player)? resultTwo,
    TResult? Function()? loading,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? input,
    TResult Function(TwoInputPlayer1 player)? resultOne,
    TResult Function(TwoInputPlayer2 player)? resultTwo,
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
    required TResult Function(_ResultOne value) resultOne,
    required TResult Function(_ResultTwo value) resultTwo,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Input value)? input,
    TResult? Function(_ResultOne value)? resultOne,
    TResult? Function(_ResultTwo value)? resultTwo,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Input value)? input,
    TResult Function(_ResultOne value)? resultOne,
    TResult Function(_ResultTwo value)? resultTwo,
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

abstract class _Error implements TwoFeatureState {
  const factory _Error() = _$_Error;
}
