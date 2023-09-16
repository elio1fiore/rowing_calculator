import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:row_calculator/core/historyV2/domain/feature_util.dart';

part 'feature.freezed.dart';

@freezed
class Feature with _$Feature {
  const factory Feature({
    int? id,
    required UnionPlayer player,
    required DateTime dateTime,
    required bool isImportant,
    required String description,
    required String title,
    required FeatureType featureType,
  }) = _Feature;
}

// class Feature {
//   int? id;
//   final UnionPlayer player;
//   final DateTime dateTime;
//   final bool isImportant;
//   final String description;
//   final String title;
//   final FeatureType type;

//   Feature({
//     this.id,
//     required this.player,
//     required this.dateTime,
//     required this.isImportant,
//     required this.description,
//     required this.title,
//     required this.type,
//   });
// }
