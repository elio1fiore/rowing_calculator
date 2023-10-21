import 'package:flutter/material.dart';
import 'package:row_calculator/core/presentation/card_result.dart';
import 'package:row_calculator/feature/three_input/domain/v2/three_input_player.dart';

class ThreeResultCoreView extends StatelessWidget {
  const ThreeResultCoreView({
    super.key,
    required this.player,
  });

  final ThreeInputPlayer player;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1.5,
      clipBehavior: Clip.antiAlias,
      shape: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(
          width: 1.5,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          CardResult(
            misura: 'Miglior Tempo',
            value: player.personalBest.valueMinuteSecondMillisecondOne,
          ),
          CardResult(
            misura: 'Metri',
            value: player.meters.toString(),
          ),
          CardResult(
            misura: 'Tempo Previsto',
            value: player.time.valueMinuteSecondMillisecondOne,
          ),
          CardResult(
            misura: 'Media 500',
            value: player.media500.valueMinuteSecondMillisecondOne,
          ),
          CardResult(
            misura: 'Dispendio %',
            value: player.energyExp.toString(),
          ),
          CardResult(
            misura: 'Watt',
            value: player.watt.toInt().toString(),
          ),
        ],
      ),
    );
  }
}
