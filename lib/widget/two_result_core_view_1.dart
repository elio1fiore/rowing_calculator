import 'package:flutter/material.dart';
import 'package:row_calculator/core/presentation/card_result.dart';
import 'package:row_calculator/feature/two_input/domain/v2/two_input_player_1.dart';

class TwoResultCoreView1 extends StatelessWidget {
  const TwoResultCoreView1({
    super.key,
    required this.player1,
  });

  final TwoInputPlayer1 player1;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1.5,
      clipBehavior: Clip.antiAlias,
      shape: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          CardResult(misura: 'Watt', value: '${player1.watt.toInt()}'),
          CardResult(
              misura: 'Tempo',
              value: player1.time.valueMinuteSecondMillisecondOne),
          CardResult(
            misura: 'Media/500',
            value: player1.media500.valueMinuteSecondMillisecondOne,
          ),
          CardResult(misura: 'Metri', value: '${player1.meters}'),
        ],
      ),
    );
  }
}
