import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:row_calculator/feature/two_input/domain/two_input_page_player_1.dart';
import 'package:row_calculator/feature/two_input/domain/two_input_page_player_2.dart';

part 'union_player_two.freezed.dart';

@freezed
class UnionPlayerTwo with _$UnionPlayerTwo {
  const factory UnionPlayerTwo.typeA(TwoInputPagePlayer1 player) = _TypeA;
  const factory UnionPlayerTwo.typeB(TwoInputPagePlayer2 player) = _TypeB;
}
