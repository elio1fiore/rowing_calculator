// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'union_player_two.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UnionPlayerTwo {
  Object get player => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TwoInputPagePlayer1 player) typeA,
    required TResult Function(TwoInputPagePlayer2 player) typeB,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TwoInputPagePlayer1 player)? typeA,
    TResult? Function(TwoInputPagePlayer2 player)? typeB,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TwoInputPagePlayer1 player)? typeA,
    TResult Function(TwoInputPagePlayer2 player)? typeB,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TypeA value) typeA,
    required TResult Function(_TypeB value) typeB,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TypeA value)? typeA,
    TResult? Function(_TypeB value)? typeB,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TypeA value)? typeA,
    TResult Function(_TypeB value)? typeB,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnionPlayerTwoCopyWith<$Res> {
  factory $UnionPlayerTwoCopyWith(
          UnionPlayerTwo value, $Res Function(UnionPlayerTwo) then) =
      _$UnionPlayerTwoCopyWithImpl<$Res, UnionPlayerTwo>;
}

/// @nodoc
class _$UnionPlayerTwoCopyWithImpl<$Res, $Val extends UnionPlayerTwo>
    implements $UnionPlayerTwoCopyWith<$Res> {
  _$UnionPlayerTwoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_TypeACopyWith<$Res> {
  factory _$$_TypeACopyWith(_$_TypeA value, $Res Function(_$_TypeA) then) =
      __$$_TypeACopyWithImpl<$Res>;
  @useResult
  $Res call({TwoInputPagePlayer1 player});
}

/// @nodoc
class __$$_TypeACopyWithImpl<$Res>
    extends _$UnionPlayerTwoCopyWithImpl<$Res, _$_TypeA>
    implements _$$_TypeACopyWith<$Res> {
  __$$_TypeACopyWithImpl(_$_TypeA _value, $Res Function(_$_TypeA) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? player = null,
  }) {
    return _then(_$_TypeA(
      null == player
          ? _value.player
          : player // ignore: cast_nullable_to_non_nullable
              as TwoInputPagePlayer1,
    ));
  }
}

/// @nodoc

class _$_TypeA implements _TypeA {
  const _$_TypeA(this.player);

  @override
  final TwoInputPagePlayer1 player;

  @override
  String toString() {
    return 'UnionPlayerTwo.typeA(player: $player)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TypeA &&
            (identical(other.player, player) || other.player == player));
  }

  @override
  int get hashCode => Object.hash(runtimeType, player);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TypeACopyWith<_$_TypeA> get copyWith =>
      __$$_TypeACopyWithImpl<_$_TypeA>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TwoInputPagePlayer1 player) typeA,
    required TResult Function(TwoInputPagePlayer2 player) typeB,
  }) {
    return typeA(player);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TwoInputPagePlayer1 player)? typeA,
    TResult? Function(TwoInputPagePlayer2 player)? typeB,
  }) {
    return typeA?.call(player);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TwoInputPagePlayer1 player)? typeA,
    TResult Function(TwoInputPagePlayer2 player)? typeB,
    required TResult orElse(),
  }) {
    if (typeA != null) {
      return typeA(player);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TypeA value) typeA,
    required TResult Function(_TypeB value) typeB,
  }) {
    return typeA(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TypeA value)? typeA,
    TResult? Function(_TypeB value)? typeB,
  }) {
    return typeA?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TypeA value)? typeA,
    TResult Function(_TypeB value)? typeB,
    required TResult orElse(),
  }) {
    if (typeA != null) {
      return typeA(this);
    }
    return orElse();
  }
}

abstract class _TypeA implements UnionPlayerTwo {
  const factory _TypeA(final TwoInputPagePlayer1 player) = _$_TypeA;

  @override
  TwoInputPagePlayer1 get player;
  @JsonKey(ignore: true)
  _$$_TypeACopyWith<_$_TypeA> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_TypeBCopyWith<$Res> {
  factory _$$_TypeBCopyWith(_$_TypeB value, $Res Function(_$_TypeB) then) =
      __$$_TypeBCopyWithImpl<$Res>;
  @useResult
  $Res call({TwoInputPagePlayer2 player});
}

/// @nodoc
class __$$_TypeBCopyWithImpl<$Res>
    extends _$UnionPlayerTwoCopyWithImpl<$Res, _$_TypeB>
    implements _$$_TypeBCopyWith<$Res> {
  __$$_TypeBCopyWithImpl(_$_TypeB _value, $Res Function(_$_TypeB) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? player = null,
  }) {
    return _then(_$_TypeB(
      null == player
          ? _value.player
          : player // ignore: cast_nullable_to_non_nullable
              as TwoInputPagePlayer2,
    ));
  }
}

/// @nodoc

class _$_TypeB implements _TypeB {
  const _$_TypeB(this.player);

  @override
  final TwoInputPagePlayer2 player;

  @override
  String toString() {
    return 'UnionPlayerTwo.typeB(player: $player)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TypeB &&
            (identical(other.player, player) || other.player == player));
  }

  @override
  int get hashCode => Object.hash(runtimeType, player);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TypeBCopyWith<_$_TypeB> get copyWith =>
      __$$_TypeBCopyWithImpl<_$_TypeB>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TwoInputPagePlayer1 player) typeA,
    required TResult Function(TwoInputPagePlayer2 player) typeB,
  }) {
    return typeB(player);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TwoInputPagePlayer1 player)? typeA,
    TResult? Function(TwoInputPagePlayer2 player)? typeB,
  }) {
    return typeB?.call(player);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TwoInputPagePlayer1 player)? typeA,
    TResult Function(TwoInputPagePlayer2 player)? typeB,
    required TResult orElse(),
  }) {
    if (typeB != null) {
      return typeB(player);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TypeA value) typeA,
    required TResult Function(_TypeB value) typeB,
  }) {
    return typeB(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TypeA value)? typeA,
    TResult? Function(_TypeB value)? typeB,
  }) {
    return typeB?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TypeA value)? typeA,
    TResult Function(_TypeB value)? typeB,
    required TResult orElse(),
  }) {
    if (typeB != null) {
      return typeB(this);
    }
    return orElse();
  }
}

abstract class _TypeB implements UnionPlayerTwo {
  const factory _TypeB(final TwoInputPagePlayer2 player) = _$_TypeB;

  @override
  TwoInputPagePlayer2 get player;
  @JsonKey(ignore: true)
  _$$_TypeBCopyWith<_$_TypeB> get copyWith =>
      throw _privateConstructorUsedError;
}
