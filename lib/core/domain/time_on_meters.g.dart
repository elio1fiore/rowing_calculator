// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'time_on_meters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TimeOnMeters _$$_TimeOnMetersFromJson(Map<String, dynamic> json) =>
    _$_TimeOnMeters(
      intervalTime:
          IntervalTime.fromJson(json['intervalTime'] as Map<String, dynamic>),
      meters: json['meters'] as int,
    );

Map<String, dynamic> _$$_TimeOnMetersToJson(_$_TimeOnMeters instance) =>
    <String, dynamic>{
      'intervalTime': instance.intervalTime,
      'meters': instance.meters,
    };
