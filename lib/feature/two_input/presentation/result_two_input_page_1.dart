import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:row_calculator/core/historyV2/domain/feature.dart';
import 'package:row_calculator/core/historyV2/shared/history_provider.dart';
import 'package:row_calculator/core/presentation/card_result.dart';

import 'package:row_calculator/feature/two_input/domain/two_input_page_player_1.dart';
import 'package:row_calculator/feature/two_input/shared/two_input_provider.dart';

class ResultTwoInputPage1 extends ConsumerWidget {
  final TwoInputPagePlayer1 player1;

  const ResultTwoInputPage1({
    super.key,
    required this.player1,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notyInput = ref.read(twoInputNotifierProvider.notifier);
    final featureNotyRead = ref.read(twoFeatureNotifierProvider.notifier);
    final db = ref.read(featuresDatabaseProvider);

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Card(
                elevation: 1.5,
                clipBehavior: Clip.antiAlias,
                shape: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: Colors.green.shade700,
                    width: 1.5,
                  ),
                ),
                color: Colors.green.shade100,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    CardResult(
                        misura: 'Watt', value: '${player1.watt.toInt()}'),
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
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: ElevatedButton(
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Text('Nuovo Calcolo from 1'),
                  ),
                  onPressed: () async {
                    final fe = Feature(
                      dateTime: DateTime.now(),
                      player: UnionPlayer.twoOne(player1),
                      description: "",
                      isImportant: false,
                      title: "Input Two",
                      type: FeatureType.two1,
                    );
                    await db.create(fe);

                    notyInput.resetValueForm();
                    featureNotyRead.setStateInput();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
