// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'three_input_player.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ThreeInputPlayer _$$_ThreeInputPlayerFromJson(Map<String, dynamic> json) =>
    _$_ThreeInputPlayer(
      nameBoat: json['nameBoat'] as String,
      boatBest: json['boatBest'] as String,
      personalBest:
          IntervalTime.fromJson(json['personalBest'] as Map<String, dynamic>),
      meters: json['meters'] as int,
      time: IntervalTime.fromJson(json['time'] as Map<String, dynamic>),
      media500: IntervalTime.fromJson(json['media500'] as Map<String, dynamic>),
      energyExp: (json['energyExp'] as num).toDouble(),
      watt: (json['watt'] as num).toDouble(),
    );

Map<String, dynamic> _$$_ThreeInputPlayerToJson(_$_ThreeInputPlayer instance) =>
    <String, dynamic>{
      'nameBoat': instance.nameBoat,
      'boatBest': instance.boatBest,
      'personalBest': instance.personalBest,
      'meters': instance.meters,
      'time': instance.time,
      'media500': instance.media500,
      'energyExp': instance.energyExp,
      'watt': instance.watt,
    };
