import 'package:flutter/material.dart';
import 'package:row_calculator/core/presentation/card_result.dart';
import 'package:row_calculator/feature/two_input/domain/v2/two_input_player_2.dart';

class TwoResultCoreView2 extends StatelessWidget {
  const TwoResultCoreView2({
    super.key,
    required this.player2,
  });

  final TwoInputPlayer2 player2;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        CardResult(misura: 'Watt', value: '${player2.watt.toInt()}'),
        CardResult(
            misura: 'Percentuale',
            value: '${player2.percentualeRichiesta.toInt()}'),
        CardResult(
            misura: 'Media/500',
            value: player2.media500.valueMinuteSecondMillisecondOne),
        CardResult(
            misura: 'Watt Percentuale',
            value: '${player2.wattInPercentuale.toInt()}'),
        CardResult(
            misura: 'Media percentuale',
            value:
                '${player2.media500InPercentuale.valueMinuteSecondMillisecondOne}'),
      ],
    );
  }
}
