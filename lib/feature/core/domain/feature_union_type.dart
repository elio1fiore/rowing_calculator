import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:row_calculator/core/domain/interval_time.dart';
import 'package:row_calculator/feature/one_input/domain/one_input_page_player.dart';
import 'package:row_calculator/feature/three_input/application/three_input_page_player.dart';
import 'package:row_calculator/feature/two_input/two_input_player/union_player_two.dart';

part 'feature_union_type.freezed.dart';

@freezed
class FeatureUnionType with _$FeatureUnionType {
  const factory FeatureUnionType.one(
    String id,
    OneInputPagePlayer player,
    DateTime dateTime,
  ) = _One;
  const factory FeatureUnionType.two(
    String id,
    UnionPlayerTwo player,
    DateTime dateTime,
  ) = _Two;
  const factory FeatureUnionType.three(
    String id,
    ThreeInputPagePlayer player,
    DateTime dateTime,
  ) = _Three;
}
