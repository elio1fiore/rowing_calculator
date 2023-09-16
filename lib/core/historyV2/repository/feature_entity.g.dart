// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feature_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FeatureEntity _$$_FeatureEntityFromJson(Map<String, dynamic> json) =>
    _$_FeatureEntity(
      dateTime: json['dateTime'] as int,
      description: json['description'] as String,
      id: json['id'] as int?,
      isImportant: json['isImportant'] as bool,
      playerStr: json['playerStr'] as String,
      title: json['title'] as String,
      type: json['type'] as int,
    );

Map<String, dynamic> _$$_FeatureEntityToJson(_$_FeatureEntity instance) =>
    <String, dynamic>{
      'dateTime': instance.dateTime,
      'description': instance.description,
      'id': instance.id,
      'isImportant': instance.isImportant,
      'playerStr': instance.playerStr,
      'title': instance.title,
      'type': instance.type,
    };
