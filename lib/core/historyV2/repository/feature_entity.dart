import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:row_calculator/core/historyV2/domain/feature.dart';
import 'package:row_calculator/core/historyV2/domain/feature_util.dart';
import 'package:row_calculator/core/historyV2/repository/feature_fields.dart';
import 'package:row_calculator/feature/one_input/domain/one_input_page_player.dart';
import 'package:row_calculator/feature/one_input/domain/v2/one_input_player.dart';
import 'package:row_calculator/feature/three_input/domain/three_input_page_player.dart';
import 'package:row_calculator/feature/two_input/domain/two_input_page_player_1.dart';
import 'package:row_calculator/feature/two_input/domain/two_input_page_player_2.dart';

// class FeatureEntity {
//   final int? id;
//   final String player;
//   final DateTime dateTime;
//   final bool isImportant;
//   final String description;
//   final String title;
//   final int type;

//   FeatureEntity({
//     this.id,
//     required this.player,
//     required this.dateTime,
//     required this.isImportant,
//     required this.description,
//     required this.title,
//     required this.type,
//   });

//   factory FeatureEntity.fromDomain(Feature f) {
//     return FeatureEntity(
//       dateTime: f.dateTime,
//       description: f.description,
//       isImportant: f.isImportant,
//       player: f.player.toString(),
//       title: f.title,
//       type: f.type.index,
//     );
//   }

//   Map<String, dynamic> toMap() {
//     return <String, dynamic>{
//       FeatureFields.id: id,
//       FeatureFields.player: player,
//       FeatureFields.dateTime: dateTime.toIso8601String(),
//       FeatureFields.isImportant: isImportant ? 1 : 0,
//       FeatureFields.description: description,
//       FeatureFields.title: title,
//       FeatureFields.type: type,
//     };
//   }

//   FeatureEntity copyWith({
//     int? id,
//     String? player,
//     DateTime? dateTime,
//     bool? isImportant,
//     String? description,
//     String? title,
//     int? type,
//   }) {
//     return FeatureEntity(
//       id: id ?? this.id,
//       player: player ?? this.player,
//       dateTime: dateTime ?? this.dateTime,
//       isImportant: isImportant ?? this.isImportant,
//       description: description ?? this.description,
//       title: title ?? this.title,
//       type: type ?? this.type,
//     );
//   }

//   factory FeatureEntity.fromMap(Map<String, dynamic> map) {
//     return FeatureEntity(
//       id: map[FeatureFields.id] != null ? map[FeatureFields.id] as int : null,
//       player: map[FeatureFields.player] as String,
//       dateTime: DateTime.parse(
//         map[FeatureFields.dateTime] as String,
//       ),
//       isImportant: map[FeatureFields.isImportant] == 1,
//       description: map[FeatureFields.description] as String,
//       title: map[FeatureFields.title] as String,
//       type: map[FeatureFields.type] as int,
//     );
//   }

//   Feature toDomain() {
//     UnionPlayer unionPlayer;

//     final FeatureType ft = intToFeatureType(type);

//     switch (ft) {
//       case FeatureType.one:
//         print("Entro qui ");
//         unionPlayer = UnionPlayer.one(OneInputPlayer.fromJson(player));

//         break;
//       case FeatureType.two1:
//         unionPlayer = UnionPlayer.twoOne(TwoInputPagePlayer1.fromJson(player));

//         break;
//       case FeatureType.two2:
//         unionPlayer = UnionPlayer.twoTwo(TwoInputPagePlayer2.fromJson(player));

//         break;
//       case FeatureType.three:
//         unionPlayer = UnionPlayer.three(ThreeInputPagePlayer.fromJson(player));

//         break;
//     }

//     return Feature(
//       dateTime: dateTime,
//       description: description,
//       id: id!,
//       isImportant: isImportant,
//       player: unionPlayer,
//       title: title,
//       type: ft,
//     );
//   }

//   FeatureType intToFeatureType(int index) {
//     return FeatureType.values[index];
//   }
// }

part 'feature_entity.freezed.dart';
part 'feature_entity.g.dart';

@freezed
class FeatureEntity with _$FeatureEntity {
  const FeatureEntity._();
  const factory FeatureEntity({
    int? id,
    required int dateTime,
    required String description,
    required bool isImportant,
    required String playerStr,
    required String title,
    required int type,
  }) = _FeatureEntity;

  factory FeatureEntity.fromJson(Map<String, dynamic> json) =>
      _$FeatureEntityFromJson(json);

  Feature toDomain() {
    FeatureType featureType = FeatureType.values[type];
    UnionPlayer unionPlayer;

    Map<String, dynamic> playerMap = jsonDecode(playerStr);

    switch (featureType) {
      case FeatureType.one:
        unionPlayer = UnionPlayer.one(OneInputPlayer.fromJson(playerMap));
        break;
      case FeatureType.two1:
        unionPlayer = UnionPlayer.one(OneInputPlayer.fromJson(playerMap));

        break;
      case FeatureType.two2:
        unionPlayer = UnionPlayer.one(OneInputPlayer.fromJson(playerMap));

        break;
      case FeatureType.three:
        unionPlayer = UnionPlayer.one(OneInputPlayer.fromJson(playerMap));

        break;
    }

    return Feature(
      dateTime: DateTime.fromMillisecondsSinceEpoch(dateTime),
      description: description,
      featureType: featureType,
      isImportant: isImportant,
      player: unionPlayer,
      title: title,
      id: id,
    );
  }

  factory FeatureEntity.fromDomain(Feature feature) {
    final jsonString = jsonEncode(
      feature.player.when(
        one: (player) => player.toJson(),
        twoOne: (player) => player.toJson(),
        twoTwo: (player) => player.toJson(),
      ),
    );

    return FeatureEntity(
      dateTime: feature.dateTime.millisecondsSinceEpoch,
      description: feature.description,
      isImportant: feature.isImportant,
      playerStr: jsonString,
      title: feature.title,
      type: feature.featureType.index,
    );
  }
}
