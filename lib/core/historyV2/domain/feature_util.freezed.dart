// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'feature_util.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UnionPlayer {
  Object get player => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(OneInputPlayer player) one,
    required TResult Function(TwoInputPlayer1 player) twoOne,
    required TResult Function(TwoInputPlayer2 player) twoTwo,
    required TResult Function(ThreeInputPlayer player) three,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(OneInputPlayer player)? one,
    TResult? Function(TwoInputPlayer1 player)? twoOne,
    TResult? Function(TwoInputPlayer2 player)? twoTwo,
    TResult? Function(ThreeInputPlayer player)? three,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OneInputPlayer player)? one,
    TResult Function(TwoInputPlayer1 player)? twoOne,
    TResult Function(TwoInputPlayer2 player)? twoTwo,
    TResult Function(ThreeInputPlayer player)? three,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_One value) one,
    required TResult Function(_TwoOne value) twoOne,
    required TResult Function(_TwoTwo value) twoTwo,
    required TResult Function(_Three value) three,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_One value)? one,
    TResult? Function(_TwoOne value)? twoOne,
    TResult? Function(_TwoTwo value)? twoTwo,
    TResult? Function(_Three value)? three,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_One value)? one,
    TResult Function(_TwoOne value)? twoOne,
    TResult Function(_TwoTwo value)? twoTwo,
    TResult Function(_Three value)? three,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnionPlayerCopyWith<$Res> {
  factory $UnionPlayerCopyWith(
          UnionPlayer value, $Res Function(UnionPlayer) then) =
      _$UnionPlayerCopyWithImpl<$Res, UnionPlayer>;
}

/// @nodoc
class _$UnionPlayerCopyWithImpl<$Res, $Val extends UnionPlayer>
    implements $UnionPlayerCopyWith<$Res> {
  _$UnionPlayerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_OneCopyWith<$Res> {
  factory _$$_OneCopyWith(_$_One value, $Res Function(_$_One) then) =
      __$$_OneCopyWithImpl<$Res>;
  @useResult
  $Res call({OneInputPlayer player});

  $OneInputPlayerCopyWith<$Res> get player;
}

/// @nodoc
class __$$_OneCopyWithImpl<$Res> extends _$UnionPlayerCopyWithImpl<$Res, _$_One>
    implements _$$_OneCopyWith<$Res> {
  __$$_OneCopyWithImpl(_$_One _value, $Res Function(_$_One) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? player = null,
  }) {
    return _then(_$_One(
      null == player
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

class _$_One implements _One {
  const _$_One(this.player);

  @override
  final OneInputPlayer player;

  @override
  String toString() {
    return 'UnionPlayer.one(player: $player)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_One &&
            (identical(other.player, player) || other.player == player));
  }

  @override
  int get hashCode => Object.hash(runtimeType, player);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OneCopyWith<_$_One> get copyWith =>
      __$$_OneCopyWithImpl<_$_One>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(OneInputPlayer player) one,
    required TResult Function(TwoInputPlayer1 player) twoOne,
    required TResult Function(TwoInputPlayer2 player) twoTwo,
    required TResult Function(ThreeInputPlayer player) three,
  }) {
    return one(player);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(OneInputPlayer player)? one,
    TResult? Function(TwoInputPlayer1 player)? twoOne,
    TResult? Function(TwoInputPlayer2 player)? twoTwo,
    TResult? Function(ThreeInputPlayer player)? three,
  }) {
    return one?.call(player);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OneInputPlayer player)? one,
    TResult Function(TwoInputPlayer1 player)? twoOne,
    TResult Function(TwoInputPlayer2 player)? twoTwo,
    TResult Function(ThreeInputPlayer player)? three,
    required TResult orElse(),
  }) {
    if (one != null) {
      return one(player);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_One value) one,
    required TResult Function(_TwoOne value) twoOne,
    required TResult Function(_TwoTwo value) twoTwo,
    required TResult Function(_Three value) three,
  }) {
    return one(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_One value)? one,
    TResult? Function(_TwoOne value)? twoOne,
    TResult? Function(_TwoTwo value)? twoTwo,
    TResult? Function(_Three value)? three,
  }) {
    return one?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_One value)? one,
    TResult Function(_TwoOne value)? twoOne,
    TResult Function(_TwoTwo value)? twoTwo,
    TResult Function(_Three value)? three,
    required TResult orElse(),
  }) {
    if (one != null) {
      return one(this);
    }
    return orElse();
  }
}

abstract class _One implements UnionPlayer {
  const factory _One(final OneInputPlayer player) = _$_One;

  @override
  OneInputPlayer get player;
  @JsonKey(ignore: true)
  _$$_OneCopyWith<_$_One> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_TwoOneCopyWith<$Res> {
  factory _$$_TwoOneCopyWith(_$_TwoOne value, $Res Function(_$_TwoOne) then) =
      __$$_TwoOneCopyWithImpl<$Res>;
  @useResult
  $Res call({TwoInputPlayer1 player});

  $TwoInputPlayer1CopyWith<$Res> get player;
}

/// @nodoc
class __$$_TwoOneCopyWithImpl<$Res>
    extends _$UnionPlayerCopyWithImpl<$Res, _$_TwoOne>
    implements _$$_TwoOneCopyWith<$Res> {
  __$$_TwoOneCopyWithImpl(_$_TwoOne _value, $Res Function(_$_TwoOne) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? player = null,
  }) {
    return _then(_$_TwoOne(
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

class _$_TwoOne implements _TwoOne {
  const _$_TwoOne(this.player);

  @override
  final TwoInputPlayer1 player;

  @override
  String toString() {
    return 'UnionPlayer.twoOne(player: $player)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TwoOne &&
            (identical(other.player, player) || other.player == player));
  }

  @override
  int get hashCode => Object.hash(runtimeType, player);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TwoOneCopyWith<_$_TwoOne> get copyWith =>
      __$$_TwoOneCopyWithImpl<_$_TwoOne>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(OneInputPlayer player) one,
    required TResult Function(TwoInputPlayer1 player) twoOne,
    required TResult Function(TwoInputPlayer2 player) twoTwo,
    required TResult Function(ThreeInputPlayer player) three,
  }) {
    return twoOne(player);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(OneInputPlayer player)? one,
    TResult? Function(TwoInputPlayer1 player)? twoOne,
    TResult? Function(TwoInputPlayer2 player)? twoTwo,
    TResult? Function(ThreeInputPlayer player)? three,
  }) {
    return twoOne?.call(player);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OneInputPlayer player)? one,
    TResult Function(TwoInputPlayer1 player)? twoOne,
    TResult Function(TwoInputPlayer2 player)? twoTwo,
    TResult Function(ThreeInputPlayer player)? three,
    required TResult orElse(),
  }) {
    if (twoOne != null) {
      return twoOne(player);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_One value) one,
    required TResult Function(_TwoOne value) twoOne,
    required TResult Function(_TwoTwo value) twoTwo,
    required TResult Function(_Three value) three,
  }) {
    return twoOne(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_One value)? one,
    TResult? Function(_TwoOne value)? twoOne,
    TResult? Function(_TwoTwo value)? twoTwo,
    TResult? Function(_Three value)? three,
  }) {
    return twoOne?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_One value)? one,
    TResult Function(_TwoOne value)? twoOne,
    TResult Function(_TwoTwo value)? twoTwo,
    TResult Function(_Three value)? three,
    required TResult orElse(),
  }) {
    if (twoOne != null) {
      return twoOne(this);
    }
    return orElse();
  }
}

abstract class _TwoOne implements UnionPlayer {
  const factory _TwoOne(final TwoInputPlayer1 player) = _$_TwoOne;

  @override
  TwoInputPlayer1 get player;
  @JsonKey(ignore: true)
  _$$_TwoOneCopyWith<_$_TwoOne> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_TwoTwoCopyWith<$Res> {
  factory _$$_TwoTwoCopyWith(_$_TwoTwo value, $Res Function(_$_TwoTwo) then) =
      __$$_TwoTwoCopyWithImpl<$Res>;
  @useResult
  $Res call({TwoInputPlayer2 player});

  $TwoInputPlayer2CopyWith<$Res> get player;
}

/// @nodoc
class __$$_TwoTwoCopyWithImpl<$Res>
    extends _$UnionPlayerCopyWithImpl<$Res, _$_TwoTwo>
    implements _$$_TwoTwoCopyWith<$Res> {
  __$$_TwoTwoCopyWithImpl(_$_TwoTwo _value, $Res Function(_$_TwoTwo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? player = null,
  }) {
    return _then(_$_TwoTwo(
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

class _$_TwoTwo implements _TwoTwo {
  const _$_TwoTwo(this.player);

  @override
  final TwoInputPlayer2 player;

  @override
  String toString() {
    return 'UnionPlayer.twoTwo(player: $player)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TwoTwo &&
            (identical(other.player, player) || other.player == player));
  }

  @override
  int get hashCode => Object.hash(runtimeType, player);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TwoTwoCopyWith<_$_TwoTwo> get copyWith =>
      __$$_TwoTwoCopyWithImpl<_$_TwoTwo>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(OneInputPlayer player) one,
    required TResult Function(TwoInputPlayer1 player) twoOne,
    required TResult Function(TwoInputPlayer2 player) twoTwo,
    required TResult Function(ThreeInputPlayer player) three,
  }) {
    return twoTwo(player);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(OneInputPlayer player)? one,
    TResult? Function(TwoInputPlayer1 player)? twoOne,
    TResult? Function(TwoInputPlayer2 player)? twoTwo,
    TResult? Function(ThreeInputPlayer player)? three,
  }) {
    return twoTwo?.call(player);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OneInputPlayer player)? one,
    TResult Function(TwoInputPlayer1 player)? twoOne,
    TResult Function(TwoInputPlayer2 player)? twoTwo,
    TResult Function(ThreeInputPlayer player)? three,
    required TResult orElse(),
  }) {
    if (twoTwo != null) {
      return twoTwo(player);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_One value) one,
    required TResult Function(_TwoOne value) twoOne,
    required TResult Function(_TwoTwo value) twoTwo,
    required TResult Function(_Three value) three,
  }) {
    return twoTwo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_One value)? one,
    TResult? Function(_TwoOne value)? twoOne,
    TResult? Function(_TwoTwo value)? twoTwo,
    TResult? Function(_Three value)? three,
  }) {
    return twoTwo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_One value)? one,
    TResult Function(_TwoOne value)? twoOne,
    TResult Function(_TwoTwo value)? twoTwo,
    TResult Function(_Three value)? three,
    required TResult orElse(),
  }) {
    if (twoTwo != null) {
      return twoTwo(this);
    }
    return orElse();
  }
}

abstract class _TwoTwo implements UnionPlayer {
  const factory _TwoTwo(final TwoInputPlayer2 player) = _$_TwoTwo;

  @override
  TwoInputPlayer2 get player;
  @JsonKey(ignore: true)
  _$$_TwoTwoCopyWith<_$_TwoTwo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ThreeCopyWith<$Res> {
  factory _$$_ThreeCopyWith(_$_Three value, $Res Function(_$_Three) then) =
      __$$_ThreeCopyWithImpl<$Res>;
  @useResult
  $Res call({ThreeInputPlayer player});

  $ThreeInputPlayerCopyWith<$Res> get player;
}

/// @nodoc
class __$$_ThreeCopyWithImpl<$Res>
    extends _$UnionPlayerCopyWithImpl<$Res, _$_Three>
    implements _$$_ThreeCopyWith<$Res> {
  __$$_ThreeCopyWithImpl(_$_Three _value, $Res Function(_$_Three) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? player = null,
  }) {
    return _then(_$_Three(
      null == player
          ? _value.player
          : player // ignore: cast_nullable_to_non_nullable
              as ThreeInputPlayer,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ThreeInputPlayerCopyWith<$Res> get player {
    return $ThreeInputPlayerCopyWith<$Res>(_value.player, (value) {
      return _then(_value.copyWith(player: value));
    });
  }
}

/// @nodoc

class _$_Three implements _Three {
  const _$_Three(this.player);

  @override
  final ThreeInputPlayer player;

  @override
  String toString() {
    return 'UnionPlayer.three(player: $player)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Three &&
            (identical(other.player, player) || other.player == player));
  }

  @override
  int get hashCode => Object.hash(runtimeType, player);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ThreeCopyWith<_$_Three> get copyWith =>
      __$$_ThreeCopyWithImpl<_$_Three>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(OneInputPlayer player) one,
    required TResult Function(TwoInputPlayer1 player) twoOne,
    required TResult Function(TwoInputPlayer2 player) twoTwo,
    required TResult Function(ThreeInputPlayer player) three,
  }) {
    return three(player);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(OneInputPlayer player)? one,
    TResult? Function(TwoInputPlayer1 player)? twoOne,
    TResult? Function(TwoInputPlayer2 player)? twoTwo,
    TResult? Function(ThreeInputPlayer player)? three,
  }) {
    return three?.call(player);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OneInputPlayer player)? one,
    TResult Function(TwoInputPlayer1 player)? twoOne,
    TResult Function(TwoInputPlayer2 player)? twoTwo,
    TResult Function(ThreeInputPlayer player)? three,
    required TResult orElse(),
  }) {
    if (three != null) {
      return three(player);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_One value) one,
    required TResult Function(_TwoOne value) twoOne,
    required TResult Function(_TwoTwo value) twoTwo,
    required TResult Function(_Three value) three,
  }) {
    return three(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_One value)? one,
    TResult? Function(_TwoOne value)? twoOne,
    TResult? Function(_TwoTwo value)? twoTwo,
    TResult? Function(_Three value)? three,
  }) {
    return three?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_One value)? one,
    TResult Function(_TwoOne value)? twoOne,
    TResult Function(_TwoTwo value)? twoTwo,
    TResult Function(_Three value)? three,
    required TResult orElse(),
  }) {
    if (three != null) {
      return three(this);
    }
    return orElse();
  }
}

abstract class _Three implements UnionPlayer {
  const factory _Three(final ThreeInputPlayer player) = _$_Three;

  @override
  ThreeInputPlayer get player;
  @JsonKey(ignore: true)
  _$$_ThreeCopyWith<_$_Three> get copyWith =>
      throw _privateConstructorUsedError;
}
