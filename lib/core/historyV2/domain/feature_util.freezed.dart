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
  OneInputPlayer get player => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(OneInputPlayer player) one,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(OneInputPlayer player)? one,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OneInputPlayer player)? one,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_One value) one,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_One value)? one,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_One value)? one,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UnionPlayerCopyWith<UnionPlayer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnionPlayerCopyWith<$Res> {
  factory $UnionPlayerCopyWith(
          UnionPlayer value, $Res Function(UnionPlayer) then) =
      _$UnionPlayerCopyWithImpl<$Res, UnionPlayer>;
  @useResult
  $Res call({OneInputPlayer player});

  $OneInputPlayerCopyWith<$Res> get player;
}

/// @nodoc
class _$UnionPlayerCopyWithImpl<$Res, $Val extends UnionPlayer>
    implements $UnionPlayerCopyWith<$Res> {
  _$UnionPlayerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? player = null,
  }) {
    return _then(_value.copyWith(
      player: null == player
          ? _value.player
          : player // ignore: cast_nullable_to_non_nullable
              as OneInputPlayer,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OneInputPlayerCopyWith<$Res> get player {
    return $OneInputPlayerCopyWith<$Res>(_value.player, (value) {
      return _then(_value.copyWith(player: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_OneCopyWith<$Res> implements $UnionPlayerCopyWith<$Res> {
  factory _$$_OneCopyWith(_$_One value, $Res Function(_$_One) then) =
      __$$_OneCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({OneInputPlayer player});

  @override
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
  }) {
    return one(player);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(OneInputPlayer player)? one,
  }) {
    return one?.call(player);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OneInputPlayer player)? one,
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
  }) {
    return one(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_One value)? one,
  }) {
    return one?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_One value)? one,
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
  @override
  @JsonKey(ignore: true)
  _$$_OneCopyWith<_$_One> get copyWith => throw _privateConstructorUsedError;
}
