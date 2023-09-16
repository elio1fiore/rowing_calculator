// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'two_input_player_1.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TwoInputPlayer1 _$TwoInputPlayer1FromJson(Map<String, dynamic> json) {
  return _TwoInputPlayer1.fromJson(json);
}

/// @nodoc
mixin _$TwoInputPlayer1 {
  double get watt => throw _privateConstructorUsedError;
  IntervalTime get time => throw _privateConstructorUsedError;
  IntervalTime get media500 => throw _privateConstructorUsedError;
  int get meters => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TwoInputPlayer1CopyWith<TwoInputPlayer1> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TwoInputPlayer1CopyWith<$Res> {
  factory $TwoInputPlayer1CopyWith(
          TwoInputPlayer1 value, $Res Function(TwoInputPlayer1) then) =
      _$TwoInputPlayer1CopyWithImpl<$Res, TwoInputPlayer1>;
  @useResult
  $Res call(
      {double watt, IntervalTime time, IntervalTime media500, int meters});

  $IntervalTimeCopyWith<$Res> get time;
  $IntervalTimeCopyWith<$Res> get media500;
}

/// @nodoc
class _$TwoInputPlayer1CopyWithImpl<$Res, $Val extends TwoInputPlayer1>
    implements $TwoInputPlayer1CopyWith<$Res> {
  _$TwoInputPlayer1CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? watt = null,
    Object? time = null,
    Object? media500 = null,
    Object? meters = null,
  }) {
    return _then(_value.copyWith(
      watt: null == watt
          ? _value.watt
          : watt // ignore: cast_nullable_to_non_nullable
              as double,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as IntervalTime,
      media500: null == media500
          ? _value.media500
          : media500 // ignore: cast_nullable_to_non_nullable
              as IntervalTime,
      meters: null == meters
          ? _value.meters
          : meters // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $IntervalTimeCopyWith<$Res> get time {
    return $IntervalTimeCopyWith<$Res>(_value.time, (value) {
      return _then(_value.copyWith(time: value) as $Val);
    });
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
abstract class _$$_TwoInputPlayer1CopyWith<$Res>
    implements $TwoInputPlayer1CopyWith<$Res> {
  factory _$$_TwoInputPlayer1CopyWith(
          _$_TwoInputPlayer1 value, $Res Function(_$_TwoInputPlayer1) then) =
      __$$_TwoInputPlayer1CopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double watt, IntervalTime time, IntervalTime media500, int meters});

  @override
  $IntervalTimeCopyWith<$Res> get time;
  @override
  $IntervalTimeCopyWith<$Res> get media500;
}

/// @nodoc
class __$$_TwoInputPlayer1CopyWithImpl<$Res>
    extends _$TwoInputPlayer1CopyWithImpl<$Res, _$_TwoInputPlayer1>
    implements _$$_TwoInputPlayer1CopyWith<$Res> {
  __$$_TwoInputPlayer1CopyWithImpl(
      _$_TwoInputPlayer1 _value, $Res Function(_$_TwoInputPlayer1) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? watt = null,
    Object? time = null,
    Object? media500 = null,
    Object? meters = null,
  }) {
    return _then(_$_TwoInputPlayer1(
      watt: null == watt
          ? _value.watt
          : watt // ignore: cast_nullable_to_non_nullable
              as double,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as IntervalTime,
      media500: null == media500
          ? _value.media500
          : media500 // ignore: cast_nullable_to_non_nullable
              as IntervalTime,
      meters: null == meters
          ? _value.meters
          : meters // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TwoInputPlayer1 extends _TwoInputPlayer1 {
  const _$_TwoInputPlayer1(
      {required this.watt,
      required this.time,
      required this.media500,
      required this.meters})
      : super._();

  factory _$_TwoInputPlayer1.fromJson(Map<String, dynamic> json) =>
      _$$_TwoInputPlayer1FromJson(json);

  @override
  final double watt;
  @override
  final IntervalTime time;
  @override
  final IntervalTime media500;
  @override
  final int meters;

  @override
  String toString() {
    return 'TwoInputPlayer1(watt: $watt, time: $time, media500: $media500, meters: $meters)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TwoInputPlayer1 &&
            (identical(other.watt, watt) || other.watt == watt) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.media500, media500) ||
                other.media500 == media500) &&
            (identical(other.meters, meters) || other.meters == meters));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, watt, time, media500, meters);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TwoInputPlayer1CopyWith<_$_TwoInputPlayer1> get copyWith =>
      __$$_TwoInputPlayer1CopyWithImpl<_$_TwoInputPlayer1>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TwoInputPlayer1ToJson(
      this,
    );
  }
}

abstract class _TwoInputPlayer1 extends TwoInputPlayer1 {
  const factory _TwoInputPlayer1(
      {required final double watt,
      required final IntervalTime time,
      required final IntervalTime media500,
      required final int meters}) = _$_TwoInputPlayer1;
  const _TwoInputPlayer1._() : super._();

  factory _TwoInputPlayer1.fromJson(Map<String, dynamic> json) =
      _$_TwoInputPlayer1.fromJson;

  @override
  double get watt;
  @override
  IntervalTime get time;
  @override
  IntervalTime get media500;
  @override
  int get meters;
  @override
  @JsonKey(ignore: true)
  _$$_TwoInputPlayer1CopyWith<_$_TwoInputPlayer1> get copyWith =>
      throw _privateConstructorUsedError;
}
