// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'two_input_player_1.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TwoInputPlayer1 _$$_TwoInputPlayer1FromJson(Map<String, dynamic> json) =>
    _$_TwoInputPlayer1(
      watt: (json['watt'] as num).toDouble(),
      time: IntervalTime.fromJson(json['time'] as Map<String, dynamic>),
      media500: IntervalTime.fromJson(json['media500'] as Map<String, dynamic>),
      meters: json['meters'] as int,
    );

Map<String, dynamic> _$$_TwoInputPlayer1ToJson(_$_TwoInputPlayer1 instance) =>
    <String, dynamic>{
      'watt': instance.watt,
      'time': instance.time,
      'media500': instance.media500,
      'meters': instance.meters,
    };
