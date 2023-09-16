// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'two_input_player_2.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TwoInputPlayer2 _$$_TwoInputPlayer2FromJson(Map<String, dynamic> json) =>
    _$_TwoInputPlayer2(
      media500: IntervalTime.fromJson(json['media500'] as Map<String, dynamic>),
      percentualeRichiesta: (json['percentualeRichiesta'] as num).toDouble(),
      watt: (json['watt'] as num).toDouble(),
      wattInPercentuale: (json['wattInPercentuale'] as num).toDouble(),
      media500InPercentuale: IntervalTime.fromJson(
          json['media500InPercentuale'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_TwoInputPlayer2ToJson(_$_TwoInputPlayer2 instance) =>
    <String, dynamic>{
      'media500': instance.media500,
      'percentualeRichiesta': instance.percentualeRichiesta,
      'watt': instance.watt,
      'wattInPercentuale': instance.wattInPercentuale,
      'media500InPercentuale': instance.media500InPercentuale,
    };
