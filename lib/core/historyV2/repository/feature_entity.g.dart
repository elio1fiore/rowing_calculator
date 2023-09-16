// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feature_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FeatureEntity _$$_FeatureEntityFromJson(Map<String, dynamic> json) =>
    _$_FeatureEntity(
      id: json['_id'] as int?,
      dateTime: json['dateTime'] as int,
      description: json['description'] as String,
      isImportant: json['isImportant'] as int,
      playerStr: json['playerStr'] as String,
      title: json['title'] as String,
      type: json['type'] as int,
    );

Map<String, dynamic> _$$_FeatureEntityToJson(_$_FeatureEntity instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'dateTime': instance.dateTime,
      'description': instance.description,
      'isImportant': instance.isImportant,
      'playerStr': instance.playerStr,
      'title': instance.title,
      'type': instance.type,
    };
