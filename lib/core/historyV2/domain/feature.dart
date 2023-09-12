import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:row_calculator/feature/one_input/domain/one_input_page_player.dart';
import 'package:row_calculator/feature/three_input/domain/three_input_page_player.dart';
import 'package:row_calculator/feature/two_input/domain/two_input_page_player_1.dart';
import 'package:row_calculator/feature/two_input/domain/two_input_page_player_2.dart';

part 'feature.freezed.dart';

@freezed
class UnionPlayer with _$UnionPlayer {
  const factory UnionPlayer.one(OneInputPagePlayer player) = _One;
  const factory UnionPlayer.twoOne(TwoInputPagePlayer1 player) = _TwoOne;
  const factory UnionPlayer.twoTwo(TwoInputPagePlayer2 player) = _TwoTwo;
  const factory UnionPlayer.three(ThreeInputPagePlayer player) = _Three;
}

class Feature {
  final int id;
  final UnionPlayer player;
  final DateTime dateTime;
  final bool isImportant;
  final String description;
  final String title;
  final FeatureType type;

  Feature({
    required this.id,
    required this.player,
    required this.dateTime,
    required this.isImportant,
    required this.description,
    required this.title,
    required this.type,
  });
}

enum FeatureType { one, two1, two2, three }
