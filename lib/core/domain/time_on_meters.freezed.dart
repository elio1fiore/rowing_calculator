// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'time_on_meters.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TimeOnMeters _$TimeOnMetersFromJson(Map<String, dynamic> json) {
  return _TimeOnMeters.fromJson(json);
}

/// @nodoc
mixin _$TimeOnMeters {
  IntervalTime get intervalTime => throw _privateConstructorUsedError;
  int get meters => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TimeOnMetersCopyWith<TimeOnMeters> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimeOnMetersCopyWith<$Res> {
  factory $TimeOnMetersCopyWith(
          TimeOnMeters value, $Res Function(TimeOnMeters) then) =
      _$TimeOnMetersCopyWithImpl<$Res, TimeOnMeters>;
  @useResult
  $Res call({IntervalTime intervalTime, int meters});

  $IntervalTimeCopyWith<$Res> get intervalTime;
}

/// @nodoc
class _$TimeOnMetersCopyWithImpl<$Res, $Val extends TimeOnMeters>
    implements $TimeOnMetersCopyWith<$Res> {
  _$TimeOnMetersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? intervalTime = null,
    Object? meters = null,
  }) {
    return _then(_value.copyWith(
      intervalTime: null == intervalTime
          ? _value.intervalTime
          : intervalTime // ignore: cast_nullable_to_non_nullable
              as IntervalTime,
      meters: null == meters
          ? _value.meters
          : meters // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $IntervalTimeCopyWith<$Res> get intervalTime {
    return $IntervalTimeCopyWith<$Res>(_value.intervalTime, (value) {
      return _then(_value.copyWith(intervalTime: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TimeOnMetersCopyWith<$Res>
    implements $TimeOnMetersCopyWith<$Res> {
  factory _$$_TimeOnMetersCopyWith(
          _$_TimeOnMeters value, $Res Function(_$_TimeOnMeters) then) =
      __$$_TimeOnMetersCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({IntervalTime intervalTime, int meters});

  @override
  $IntervalTimeCopyWith<$Res> get intervalTime;
}

/// @nodoc
class __$$_TimeOnMetersCopyWithImpl<$Res>
    extends _$TimeOnMetersCopyWithImpl<$Res, _$_TimeOnMeters>
    implements _$$_TimeOnMetersCopyWith<$Res> {
  __$$_TimeOnMetersCopyWithImpl(
      _$_TimeOnMeters _value, $Res Function(_$_TimeOnMeters) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? intervalTime = null,
    Object? meters = null,
  }) {
    return _then(_$_TimeOnMeters(
      intervalTime: null == intervalTime
          ? _value.intervalTime
          : intervalTime // ignore: cast_nullable_to_non_nullable
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
class _$_TimeOnMeters extends _TimeOnMeters {
  const _$_TimeOnMeters({required this.intervalTime, required this.meters})
      : super._();

  factory _$_TimeOnMeters.fromJson(Map<String, dynamic> json) =>
      _$$_TimeOnMetersFromJson(json);

  @override
  final IntervalTime intervalTime;
  @override
  final int meters;

  @override
  String toString() {
    return 'TimeOnMeters(intervalTime: $intervalTime, meters: $meters)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TimeOnMeters &&
            (identical(other.intervalTime, intervalTime) ||
                other.intervalTime == intervalTime) &&
            (identical(other.meters, meters) || other.meters == meters));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, intervalTime, meters);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TimeOnMetersCopyWith<_$_TimeOnMeters> get copyWith =>
      __$$_TimeOnMetersCopyWithImpl<_$_TimeOnMeters>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TimeOnMetersToJson(
      this,
    );
  }
}

abstract class _TimeOnMeters extends TimeOnMeters {
  const factory _TimeOnMeters(
      {required final IntervalTime intervalTime,
      required final int meters}) = _$_TimeOnMeters;
  const _TimeOnMeters._() : super._();

  factory _TimeOnMeters.fromJson(Map<String, dynamic> json) =
      _$_TimeOnMeters.fromJson;

  @override
  IntervalTime get intervalTime;
  @override
  int get meters;
  @override
  @JsonKey(ignore: true)
  _$$_TimeOnMetersCopyWith<_$_TimeOnMeters> get copyWith =>
      throw _privateConstructorUsedError;
}
