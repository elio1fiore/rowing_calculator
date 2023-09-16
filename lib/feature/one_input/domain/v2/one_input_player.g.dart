// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'one_input_player.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OneInputPlayer _$$_OneInputPlayerFromJson(Map<String, dynamic> json) =>
    _$_OneInputPlayer(
      watt: (json['watt'] as num).toDouble(),
      media500: IntervalTime.fromJson(json['media500'] as Map<String, dynamic>),
      listTimeOnMeters: (json['listTimeOnMeters'] as List<dynamic>)
          .map((e) => TimeOnMeters.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_OneInputPlayerToJson(_$_OneInputPlayer instance) =>
    <String, dynamic>{
      'watt': instance.watt,
      'media500': instance.media500,
      'listTimeOnMeters': instance.listTimeOnMeters,
    };
