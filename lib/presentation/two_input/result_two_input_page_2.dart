import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:row_calculator/player/two_input_player/two_input_page_player_2.dart';
import 'package:row_calculator/presentation/card_result.dart';

import '../../shared/two_input/two_input_provider.dart';

class ResultTwoInputPage2 extends ConsumerWidget {
  final TwoInputPagePlayer2 player2;

  const ResultTwoInputPage2({
    super.key,
    required this.player2,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final noty = ref.read(twoInputNotifierProvider.notifier);

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
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
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    CardResult(
                        misura: 'Watt', value: '${player2.watt.toInt()}'),
                    CardResult(
                        misura: 'Percentuale',
                        value: '${player2.percentualeRichiesta.toInt()}'),
                    CardResult(
                        misura: 'Media/500',
                        value:
                            player2.media500.valueMinuteSecondMillisecondOne),
                    CardResult(
                        misura: 'Watt Percentuale',
                        value: '${player2.wattInPercentuale.toInt()}'),
                    CardResult(
                        misura: 'Media percentuale',
                        value:
                            '${player2.media500InPercentuale.valueMinuteSecondMillisecondOne}'),
                  ],
                ),
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
                  child: Text('Nuovo Calcolo'),
                ),
                onPressed: (() => noty.goAndResetInputPage()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
