// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'interval_time.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

IntervalTime _$IntervalTimeFromJson(Map<String, dynamic> json) {
  return _IntervalTime.fromJson(json);
}

/// @nodoc
mixin _$IntervalTime {
  double? get beta => throw _privateConstructorUsedError;
  int get days => throw _privateConstructorUsedError;
  int get hours => throw _privateConstructorUsedError;
  int get minutes => throw _privateConstructorUsedError;
  int get seconds => throw _privateConstructorUsedError;
  int get milliseconds => throw _privateConstructorUsedError;
  int get microseconds => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IntervalTimeCopyWith<IntervalTime> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IntervalTimeCopyWith<$Res> {
  factory $IntervalTimeCopyWith(
          IntervalTime value, $Res Function(IntervalTime) then) =
      _$IntervalTimeCopyWithImpl<$Res, IntervalTime>;
  @useResult
  $Res call(
      {double? beta,
      int days,
      int hours,
      int minutes,
      int seconds,
      int milliseconds,
      int microseconds});
}

/// @nodoc
class _$IntervalTimeCopyWithImpl<$Res, $Val extends IntervalTime>
    implements $IntervalTimeCopyWith<$Res> {
  _$IntervalTimeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? beta = freezed,
    Object? days = null,
    Object? hours = null,
    Object? minutes = null,
    Object? seconds = null,
    Object? milliseconds = null,
    Object? microseconds = null,
  }) {
    return _then(_value.copyWith(
      beta: freezed == beta
          ? _value.beta
          : beta // ignore: cast_nullable_to_non_nullable
              as double?,
      days: null == days
          ? _value.days
          : days // ignore: cast_nullable_to_non_nullable
              as int,
      hours: null == hours
          ? _value.hours
          : hours // ignore: cast_nullable_to_non_nullable
              as int,
      minutes: null == minutes
          ? _value.minutes
          : minutes // ignore: cast_nullable_to_non_nullable
              as int,
      seconds: null == seconds
          ? _value.seconds
          : seconds // ignore: cast_nullable_to_non_nullable
              as int,
      milliseconds: null == milliseconds
          ? _value.milliseconds
          : milliseconds // ignore: cast_nullable_to_non_nullable
              as int,
      microseconds: null == microseconds
          ? _value.microseconds
          : microseconds // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_IntervalTimeCopyWith<$Res>
    implements $IntervalTimeCopyWith<$Res> {
  factory _$$_IntervalTimeCopyWith(
          _$_IntervalTime value, $Res Function(_$_IntervalTime) then) =
      __$$_IntervalTimeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double? beta,
      int days,
      int hours,
      int minutes,
      int seconds,
      int milliseconds,
      int microseconds});
}

/// @nodoc
class __$$_IntervalTimeCopyWithImpl<$Res>
    extends _$IntervalTimeCopyWithImpl<$Res, _$_IntervalTime>
    implements _$$_IntervalTimeCopyWith<$Res> {
  __$$_IntervalTimeCopyWithImpl(
      _$_IntervalTime _value, $Res Function(_$_IntervalTime) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? beta = freezed,
    Object? days = null,
    Object? hours = null,
    Object? minutes = null,
    Object? seconds = null,
    Object? milliseconds = null,
    Object? microseconds = null,
  }) {
    return _then(_$_IntervalTime(
      beta: freezed == beta
          ? _value.beta
          : beta // ignore: cast_nullable_to_non_nullable
              as double?,
      days: null == days
          ? _value.days
          : days // ignore: cast_nullable_to_non_nullable
              as int,
      hours: null == hours
          ? _value.hours
          : hours // ignore: cast_nullable_to_non_nullable
              as int,
      minutes: null == minutes
          ? _value.minutes
          : minutes // ignore: cast_nullable_to_non_nullable
              as int,
      seconds: null == seconds
          ? _value.seconds
          : seconds // ignore: cast_nullable_to_non_nullable
              as int,
      milliseconds: null == milliseconds
          ? _value.milliseconds
          : milliseconds // ignore: cast_nullable_to_non_nullable
              as int,
      microseconds: null == microseconds
          ? _value.microseconds
          : microseconds // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_IntervalTime extends _IntervalTime {
  const _$_IntervalTime(
      {this.beta,
      this.days = 0,
      this.hours = 0,
      this.minutes = 0,
      this.seconds = 0,
      this.milliseconds = 0,
      this.microseconds = 0})
      : super._();

  factory _$_IntervalTime.fromJson(Map<String, dynamic> json) =>
      _$$_IntervalTimeFromJson(json);

  @override
  final double? beta;
  @override
  @JsonKey()
  final int days;
  @override
  @JsonKey()
  final int hours;
  @override
  @JsonKey()
  final int minutes;
  @override
  @JsonKey()
  final int seconds;
  @override
  @JsonKey()
  final int milliseconds;
  @override
  @JsonKey()
  final int microseconds;

  @override
  String toString() {
    return 'IntervalTime(beta: $beta, days: $days, hours: $hours, minutes: $minutes, seconds: $seconds, milliseconds: $milliseconds, microseconds: $microseconds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IntervalTime &&
            (identical(other.beta, beta) || other.beta == beta) &&
            (identical(other.days, days) || other.days == days) &&
            (identical(other.hours, hours) || other.hours == hours) &&
            (identical(other.minutes, minutes) || other.minutes == minutes) &&
            (identical(other.seconds, seconds) || other.seconds == seconds) &&
            (identical(other.milliseconds, milliseconds) ||
                other.milliseconds == milliseconds) &&
            (identical(other.microseconds, microseconds) ||
                other.microseconds == microseconds));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, beta, days, hours, minutes,
      seconds, milliseconds, microseconds);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IntervalTimeCopyWith<_$_IntervalTime> get copyWith =>
      __$$_IntervalTimeCopyWithImpl<_$_IntervalTime>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IntervalTimeToJson(
      this,
    );
  }
}

abstract class _IntervalTime extends IntervalTime {
  const factory _IntervalTime(
      {final double? beta,
      final int days,
      final int hours,
      final int minutes,
      final int seconds,
      final int milliseconds,
      final int microseconds}) = _$_IntervalTime;
  const _IntervalTime._() : super._();

  factory _IntervalTime.fromJson(Map<String, dynamic> json) =
      _$_IntervalTime.fromJson;

  @override
  double? get beta;
  @override
  int get days;
  @override
  int get hours;
  @override
  int get minutes;
  @override
  int get seconds;
  @override
  int get milliseconds;
  @override
  int get microseconds;
  @override
  @JsonKey(ignore: true)
  _$$_IntervalTimeCopyWith<_$_IntervalTime> get copyWith =>
      throw _privateConstructorUsedError;
}
