import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:row_calculator/feature/one_input/domain/v2/one_input_player.dart';

part 'feature_util.freezed.dart';

enum FeatureType { one, two1, two2, three }

@freezed
class UnionPlayer with _$UnionPlayer {
  const factory UnionPlayer.one(OneInputPlayer player) = _One;
  // const factory UnionPlayer.twoOne(TwoInputPagePlayer1 player) = _TwoOne;
  // const factory UnionPlayer.twoTwo(TwoInputPagePlayer2 player) = _TwoTwo;
  // const factory UnionPlayer.three(ThreeInputPagePlayer player) = _Three;
}

class UnionPlayerConverter
    implements JsonConverter<UnionPlayer, Map<String, dynamic>> {
  const UnionPlayerConverter();

  @override
  UnionPlayer fromJson(Map<String, dynamic> json) {
    if (json.containsKey('one')) {
      return UnionPlayer.one(OneInputPlayer.fromJson(json['one']));
    }

    throw Exception('Unknown UnionPlayer type');
  }

  @override
  Map<String, dynamic> toJson(UnionPlayer player) => player.when(
        one: (player) => {'one': player.toJson()},
      );
}
