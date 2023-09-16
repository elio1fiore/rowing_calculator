import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:row_calculator/feature/two_input/domain/v2/two_input_player_1.dart';
import 'package:row_calculator/feature/two_input/domain/v2/two_input_player_2.dart';

part 'union_player_two.freezed.dart';

@freezed
class UnionPlayerTwo with _$UnionPlayerTwo {
  const factory UnionPlayerTwo.typeA(TwoInputPlayer1 player) = _TypeA;
  const factory UnionPlayerTwo.typeB(TwoInputPlayer2 player) = _TypeB;
}
