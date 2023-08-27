// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'feature_union_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FeatureUnionType {
  String get id => throw _privateConstructorUsedError;
  Object get player => throw _privateConstructorUsedError;
  DateTime get dateTime => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id, OneInputPagePlayer player, DateTime dateTime)
        one,
    required TResult Function(
            String id, UnionPlayerTwo player, DateTime dateTime)
        two,
    required TResult Function(
            String id, ThreeInputPagePlayer player, DateTime dateTime)
        three,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, OneInputPagePlayer player, DateTime dateTime)?
        one,
    TResult? Function(String id, UnionPlayerTwo player, DateTime dateTime)? two,
    TResult? Function(
            String id, ThreeInputPagePlayer player, DateTime dateTime)?
        three,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, OneInputPagePlayer player, DateTime dateTime)?
        one,
    TResult Function(String id, UnionPlayerTwo player, DateTime dateTime)? two,
    TResult Function(String id, ThreeInputPagePlayer player, DateTime dateTime)?
        three,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_One value) one,
    required TResult Function(_Two value) two,
    required TResult Function(_Three value) three,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_One value)? one,
    TResult? Function(_Two value)? two,
    TResult? Function(_Three value)? three,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_One value)? one,
    TResult Function(_Two value)? two,
    TResult Function(_Three value)? three,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FeatureUnionTypeCopyWith<FeatureUnionType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeatureUnionTypeCopyWith<$Res> {
  factory $FeatureUnionTypeCopyWith(
          FeatureUnionType value, $Res Function(FeatureUnionType) then) =
      _$FeatureUnionTypeCopyWithImpl<$Res, FeatureUnionType>;
  @useResult
  $Res call({String id, DateTime dateTime});
}

/// @nodoc
class _$FeatureUnionTypeCopyWithImpl<$Res, $Val extends FeatureUnionType>
    implements $FeatureUnionTypeCopyWith<$Res> {
  _$FeatureUnionTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? dateTime = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OneCopyWith<$Res>
    implements $FeatureUnionTypeCopyWith<$Res> {
  factory _$$_OneCopyWith(_$_One value, $Res Function(_$_One) then) =
      __$$_OneCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, OneInputPagePlayer player, DateTime dateTime});
}

/// @nodoc
class __$$_OneCopyWithImpl<$Res>
    extends _$FeatureUnionTypeCopyWithImpl<$Res, _$_One>
    implements _$$_OneCopyWith<$Res> {
  __$$_OneCopyWithImpl(_$_One _value, $Res Function(_$_One) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? player = null,
    Object? dateTime = null,
  }) {
    return _then(_$_One(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      null == player
          ? _value.player
          : player // ignore: cast_nullable_to_non_nullable
              as OneInputPagePlayer,
      null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_One implements _One {
  const _$_One(this.id, this.player, this.dateTime);

  @override
  final String id;
  @override
  final OneInputPagePlayer player;
  @override
  final DateTime dateTime;

  @override
  String toString() {
    return 'FeatureUnionType.one(id: $id, player: $player, dateTime: $dateTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_One &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.player, player) || other.player == player) &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, player, dateTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OneCopyWith<_$_One> get copyWith =>
      __$$_OneCopyWithImpl<_$_One>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id, OneInputPagePlayer player, DateTime dateTime)
        one,
    required TResult Function(
            String id, UnionPlayerTwo player, DateTime dateTime)
        two,
    required TResult Function(
            String id, ThreeInputPagePlayer player, DateTime dateTime)
        three,
  }) {
    return one(id, player, dateTime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, OneInputPagePlayer player, DateTime dateTime)?
        one,
    TResult? Function(String id, UnionPlayerTwo player, DateTime dateTime)? two,
    TResult? Function(
            String id, ThreeInputPagePlayer player, DateTime dateTime)?
        three,
  }) {
    return one?.call(id, player, dateTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, OneInputPagePlayer player, DateTime dateTime)?
        one,
    TResult Function(String id, UnionPlayerTwo player, DateTime dateTime)? two,
    TResult Function(String id, ThreeInputPagePlayer player, DateTime dateTime)?
        three,
    required TResult orElse(),
  }) {
    if (one != null) {
      return one(id, player, dateTime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_One value) one,
    required TResult Function(_Two value) two,
    required TResult Function(_Three value) three,
  }) {
    return one(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_One value)? one,
    TResult? Function(_Two value)? two,
    TResult? Function(_Three value)? three,
  }) {
    return one?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_One value)? one,
    TResult Function(_Two value)? two,
    TResult Function(_Three value)? three,
    required TResult orElse(),
  }) {
    if (one != null) {
      return one(this);
    }
    return orElse();
  }
}

abstract class _One implements FeatureUnionType {
  const factory _One(final String id, final OneInputPagePlayer player,
      final DateTime dateTime) = _$_One;

  @override
  String get id;
  @override
  OneInputPagePlayer get player;
  @override
  DateTime get dateTime;
  @override
  @JsonKey(ignore: true)
  _$$_OneCopyWith<_$_One> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_TwoCopyWith<$Res>
    implements $FeatureUnionTypeCopyWith<$Res> {
  factory _$$_TwoCopyWith(_$_Two value, $Res Function(_$_Two) then) =
      __$$_TwoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, UnionPlayerTwo player, DateTime dateTime});

  $UnionPlayerTwoCopyWith<$Res> get player;
}

/// @nodoc
class __$$_TwoCopyWithImpl<$Res>
    extends _$FeatureUnionTypeCopyWithImpl<$Res, _$_Two>
    implements _$$_TwoCopyWith<$Res> {
  __$$_TwoCopyWithImpl(_$_Two _value, $Res Function(_$_Two) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? player = null,
    Object? dateTime = null,
  }) {
    return _then(_$_Two(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      null == player
          ? _value.player
          : player // ignore: cast_nullable_to_non_nullable
              as UnionPlayerTwo,
      null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UnionPlayerTwoCopyWith<$Res> get player {
    return $UnionPlayerTwoCopyWith<$Res>(_value.player, (value) {
      return _then(_value.copyWith(player: value));
    });
  }
}

/// @nodoc

class _$_Two implements _Two {
  const _$_Two(this.id, this.player, this.dateTime);

  @override
  final String id;
  @override
  final UnionPlayerTwo player;
  @override
  final DateTime dateTime;

  @override
  String toString() {
    return 'FeatureUnionType.two(id: $id, player: $player, dateTime: $dateTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Two &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.player, player) || other.player == player) &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, player, dateTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TwoCopyWith<_$_Two> get copyWith =>
      __$$_TwoCopyWithImpl<_$_Two>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id, OneInputPagePlayer player, DateTime dateTime)
        one,
    required TResult Function(
            String id, UnionPlayerTwo player, DateTime dateTime)
        two,
    required TResult Function(
            String id, ThreeInputPagePlayer player, DateTime dateTime)
        three,
  }) {
    return two(id, player, dateTime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, OneInputPagePlayer player, DateTime dateTime)?
        one,
    TResult? Function(String id, UnionPlayerTwo player, DateTime dateTime)? two,
    TResult? Function(
            String id, ThreeInputPagePlayer player, DateTime dateTime)?
        three,
  }) {
    return two?.call(id, player, dateTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, OneInputPagePlayer player, DateTime dateTime)?
        one,
    TResult Function(String id, UnionPlayerTwo player, DateTime dateTime)? two,
    TResult Function(String id, ThreeInputPagePlayer player, DateTime dateTime)?
        three,
    required TResult orElse(),
  }) {
    if (two != null) {
      return two(id, player, dateTime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_One value) one,
    required TResult Function(_Two value) two,
    required TResult Function(_Three value) three,
  }) {
    return two(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_One value)? one,
    TResult? Function(_Two value)? two,
    TResult? Function(_Three value)? three,
  }) {
    return two?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_One value)? one,
    TResult Function(_Two value)? two,
    TResult Function(_Three value)? three,
    required TResult orElse(),
  }) {
    if (two != null) {
      return two(this);
    }
    return orElse();
  }
}

abstract class _Two implements FeatureUnionType {
  const factory _Two(final String id, final UnionPlayerTwo player,
      final DateTime dateTime) = _$_Two;

  @override
  String get id;
  @override
  UnionPlayerTwo get player;
  @override
  DateTime get dateTime;
  @override
  @JsonKey(ignore: true)
  _$$_TwoCopyWith<_$_Two> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ThreeCopyWith<$Res>
    implements $FeatureUnionTypeCopyWith<$Res> {
  factory _$$_ThreeCopyWith(_$_Three value, $Res Function(_$_Three) then) =
      __$$_ThreeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, ThreeInputPagePlayer player, DateTime dateTime});
}

/// @nodoc
class __$$_ThreeCopyWithImpl<$Res>
    extends _$FeatureUnionTypeCopyWithImpl<$Res, _$_Three>
    implements _$$_ThreeCopyWith<$Res> {
  __$$_ThreeCopyWithImpl(_$_Three _value, $Res Function(_$_Three) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? player = null,
    Object? dateTime = null,
  }) {
    return _then(_$_Three(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      null == player
          ? _value.player
          : player // ignore: cast_nullable_to_non_nullable
              as ThreeInputPagePlayer,
      null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_Three implements _Three {
  const _$_Three(this.id, this.player, this.dateTime);

  @override
  final String id;
  @override
  final ThreeInputPagePlayer player;
  @override
  final DateTime dateTime;

  @override
  String toString() {
    return 'FeatureUnionType.three(id: $id, player: $player, dateTime: $dateTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Three &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.player, player) || other.player == player) &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, player, dateTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ThreeCopyWith<_$_Three> get copyWith =>
      __$$_ThreeCopyWithImpl<_$_Three>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id, OneInputPagePlayer player, DateTime dateTime)
        one,
    required TResult Function(
            String id, UnionPlayerTwo player, DateTime dateTime)
        two,
    required TResult Function(
            String id, ThreeInputPagePlayer player, DateTime dateTime)
        three,
  }) {
    return three(id, player, dateTime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, OneInputPagePlayer player, DateTime dateTime)?
        one,
    TResult? Function(String id, UnionPlayerTwo player, DateTime dateTime)? two,
    TResult? Function(
            String id, ThreeInputPagePlayer player, DateTime dateTime)?
        three,
  }) {
    return three?.call(id, player, dateTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, OneInputPagePlayer player, DateTime dateTime)?
        one,
    TResult Function(String id, UnionPlayerTwo player, DateTime dateTime)? two,
    TResult Function(String id, ThreeInputPagePlayer player, DateTime dateTime)?
        three,
    required TResult orElse(),
  }) {
    if (three != null) {
      return three(id, player, dateTime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_One value) one,
    required TResult Function(_Two value) two,
    required TResult Function(_Three value) three,
  }) {
    return three(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_One value)? one,
    TResult? Function(_Two value)? two,
    TResult? Function(_Three value)? three,
  }) {
    return three?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_One value)? one,
    TResult Function(_Two value)? two,
    TResult Function(_Three value)? three,
    required TResult orElse(),
  }) {
    if (three != null) {
      return three(this);
    }
    return orElse();
  }
}

abstract class _Three implements FeatureUnionType {
  const factory _Three(final String id, final ThreeInputPagePlayer player,
      final DateTime dateTime) = _$_Three;

  @override
  String get id;
  @override
  ThreeInputPagePlayer get player;
  @override
  DateTime get dateTime;
  @override
  @JsonKey(ignore: true)
  _$$_ThreeCopyWith<_$_Three> get copyWith =>
      throw _privateConstructorUsedError;
}
