import 'package:row_calculator/domain/interval_time.dart';
import 'package:row_calculator/function/functions.dart';

import 'two_input_page_player.dart';

class TwoInputPagePlayer2 extends TwoInputPagePlayer {
  final IntervalTime media500;
  final double percentualeRichiesta;
  final double watt;
  final double wattInPercentuale;
  final IntervalTime media500InPercentuale;

  TwoInputPagePlayer2({
    required this.media500,
    required this.media500InPercentuale,
    required this.percentualeRichiesta,
    required this.watt,
    required this.wattInPercentuale,
  });

  factory TwoInputPagePlayer2.fromM500P({
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
      millisecond: decs,
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

    return TwoInputPagePlayer2(
      media500: mediaIT,
      media500InPercentuale: mediaPerc,
      percentualeRichiesta: npr,
      watt: watt,
      wattInPercentuale: wattXPerc,
    );
  }
}
