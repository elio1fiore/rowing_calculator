import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:row_calculator/core/domain/interval_time.dart';
import 'package:row_calculator/core/function/functions.dart';

part 'two_input_player_2.freezed.dart';
part 'two_input_player_2.g.dart';

@freezed
class TwoInputPlayer2 with _$TwoInputPlayer2 {
  const TwoInputPlayer2._();
  const factory TwoInputPlayer2({
    required IntervalTime media500,
    required double percentualeRichiesta,
    required double watt,
    required double wattInPercentuale,
    required IntervalTime media500InPercentuale,
  }) = _TwoInputPlayer2;

  factory TwoInputPlayer2.fromJson(Map<String, dynamic> json) =>
      _$TwoInputPlayer2FromJson(json);

  factory TwoInputPlayer2.fromM500P({
    required String media500,
    required String percentualeRichiesta,
  }) {
    final media_sp = media500.split(':');

    final minutes = int.parse(media_sp[0]);
    final seconds = int.parse(media_sp[1]);
    final decs = int.parse(media_sp[2]);

    final IntervalTime mediaIT = IntervalTime(
      minutes: minutes,
      seconds: seconds,
      milliseconds: decs,
    );

    final npr = double.parse(percentualeRichiesta);
    final watt = calcWatt(mediaCinquecento: mediaIT);
    final wattXPerc = wattXPercentual(
      numberPerc: npr,
      watt: watt,
    );
    final mediaPerc = mediaXPercentual(
      wattXPercentual: wattXPerc,
    );

    return TwoInputPlayer2(
      media500: mediaIT,
      media500InPercentuale: mediaPerc,
      percentualeRichiesta: npr,
      watt: watt,
      wattInPercentuale: wattXPerc,
    );
  }
}
