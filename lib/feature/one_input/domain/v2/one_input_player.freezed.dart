// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'one_input_player.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OneInputPlayer _$OneInputPlayerFromJson(Map<String, dynamic> json) {
  return _OneInputPlayer.fromJson(json);
}

/// @nodoc
mixin _$OneInputPlayer {
  double get watt => throw _privateConstructorUsedError;
  IntervalTime get media500 => throw _privateConstructorUsedError;
  List<TimeOnMeters> get listTimeOnMeters => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OneInputPlayerCopyWith<OneInputPlayer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OneInputPlayerCopyWith<$Res> {
  factory $OneInputPlayerCopyWith(
          OneInputPlayer value, $Res Function(OneInputPlayer) then) =
      _$OneInputPlayerCopyWithImpl<$Res, OneInputPlayer>;
  @useResult
  $Res call(
      {double watt,
      IntervalTime media500,
      List<TimeOnMeters> listTimeOnMeters});

  $IntervalTimeCopyWith<$Res> get media500;
}

/// @nodoc
class _$OneInputPlayerCopyWithImpl<$Res, $Val extends OneInputPlayer>
    implements $OneInputPlayerCopyWith<$Res> {
  _$OneInputPlayerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? watt = null,
    Object? media500 = null,
    Object? listTimeOnMeters = null,
  }) {
    return _then(_value.copyWith(
      watt: null == watt
          ? _value.watt
          : watt // ignore: cast_nullable_to_non_nullable
              as double,
      media500: null == media500
          ? _value.media500
          : media500 // ignore: cast_nullable_to_non_nullable
              as IntervalTime,
      listTimeOnMeters: null == listTimeOnMeters
          ? _value.listTimeOnMeters
          : listTimeOnMeters // ignore: cast_nullable_to_non_nullable
              as List<TimeOnMeters>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $IntervalTimeCopyWith<$Res> get media500 {
    return $IntervalTimeCopyWith<$Res>(_value.media500, (value) {
      return _then(_value.copyWith(media500: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_OneInputPlayerCopyWith<$Res>
    implements $OneInputPlayerCopyWith<$Res> {
  factory _$$_OneInputPlayerCopyWith(
          _$_OneInputPlayer value, $Res Function(_$_OneInputPlayer) then) =
      __$$_OneInputPlayerCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double watt,
      IntervalTime media500,
      List<TimeOnMeters> listTimeOnMeters});

  @override
  $IntervalTimeCopyWith<$Res> get media500;
}

/// @nodoc
class __$$_OneInputPlayerCopyWithImpl<$Res>
    extends _$OneInputPlayerCopyWithImpl<$Res, _$_OneInputPlayer>
    implements _$$_OneInputPlayerCopyWith<$Res> {
  __$$_OneInputPlayerCopyWithImpl(
      _$_OneInputPlayer _value, $Res Function(_$_OneInputPlayer) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? watt = null,
    Object? media500 = null,
    Object? listTimeOnMeters = null,
  }) {
    return _then(_$_OneInputPlayer(
      watt: null == watt
          ? _value.watt
          : watt // ignore: cast_nullable_to_non_nullable
              as double,
      media500: null == media500
          ? _value.media500
          : media500 // ignore: cast_nullable_to_non_nullable
              as IntervalTime,
      listTimeOnMeters: null == listTimeOnMeters
          ? _value._listTimeOnMeters
          : listTimeOnMeters // ignore: cast_nullable_to_non_nullable
              as List<TimeOnMeters>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OneInputPlayer extends _OneInputPlayer {
  const _$_OneInputPlayer(
      {required this.watt,
      required this.media500,
      required final List<TimeOnMeters> listTimeOnMeters})
      : _listTimeOnMeters = listTimeOnMeters,
        super._();

  factory _$_OneInputPlayer.fromJson(Map<String, dynamic> json) =>
      _$$_OneInputPlayerFromJson(json);

  @override
  final double watt;
  @override
  final IntervalTime media500;
  final List<TimeOnMeters> _listTimeOnMeters;
  @override
  List<TimeOnMeters> get listTimeOnMeters {
    if (_listTimeOnMeters is EqualUnmodifiableListView)
      return _listTimeOnMeters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listTimeOnMeters);
  }

  @override
  String toString() {
    return 'OneInputPlayer(watt: $watt, media500: $media500, listTimeOnMeters: $listTimeOnMeters)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OneInputPlayer &&
            (identical(other.watt, watt) || other.watt == watt) &&
            (identical(other.media500, media500) ||
                other.media500 == media500) &&
            const DeepCollectionEquality()
                .equals(other._listTimeOnMeters, _listTimeOnMeters));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, watt, media500,
      const DeepCollectionEquality().hash(_listTimeOnMeters));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OneInputPlayerCopyWith<_$_OneInputPlayer> get copyWith =>
      __$$_OneInputPlayerCopyWithImpl<_$_OneInputPlayer>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OneInputPlayerToJson(
      this,
    );
  }
}

abstract class _OneInputPlayer extends OneInputPlayer {
  const factory _OneInputPlayer(
      {required final double watt,
      required final IntervalTime media500,
      required final List<TimeOnMeters> listTimeOnMeters}) = _$_OneInputPlayer;
  const _OneInputPlayer._() : super._();

  factory _OneInputPlayer.fromJson(Map<String, dynamic> json) =
      _$_OneInputPlayer.fromJson;

  @override
  double get watt;
  @override
  IntervalTime get media500;
  @override
  List<TimeOnMeters> get listTimeOnMeters;
  @override
  @JsonKey(ignore: true)
  _$$_OneInputPlayerCopyWith<_$_OneInputPlayer> get copyWith =>
      throw _privateConstructorUsedError;
}
