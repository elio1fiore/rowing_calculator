// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'interval_time.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_IntervalTime _$$_IntervalTimeFromJson(Map<String, dynamic> json) =>
    _$_IntervalTime(
      beta: (json['beta'] as num?)?.toDouble(),
      days: json['days'] as int? ?? 0,
      hours: json['hours'] as int? ?? 0,
      minutes: json['minutes'] as int? ?? 0,
      seconds: json['seconds'] as int? ?? 0,
      milliseconds: json['milliseconds'] as int? ?? 0,
      microseconds: json['microseconds'] as int? ?? 0,
    );

Map<String, dynamic> _$$_IntervalTimeToJson(_$_IntervalTime instance) =>
    <String, dynamic>{
      'beta': instance.beta,
      'days': instance.days,
      'hours': instance.hours,
      'minutes': instance.minutes,
      'seconds': instance.seconds,
      'milliseconds': instance.milliseconds,
      'microseconds': instance.microseconds,
    };
