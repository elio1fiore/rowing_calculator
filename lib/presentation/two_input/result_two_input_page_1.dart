import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:row_calculator/player/two_input_player/two_input_page_player_1.dart';
import 'package:row_calculator/presentation/two_input/card_result_two.dart';
import 'package:row_calculator/shared/two_input/two_input_provider.dart';

class ResultTwoInputPage1 extends ConsumerWidget {
  final TwoInputPagePlayer1 player1;

  const ResultTwoInputPage1({
    super.key,
    required this.player1,
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
                    CardResultTwo(
                        misura: 'Watt', value: '${player1.watt.toInt()}'),
                    CardResultTwo(
                        misura: 'Tempo',
                        value: '${player1.time.valueMinuteSecondMillisecond}'),
                    CardResultTwo(
                        misura: 'Media/500',
                        value:
                            '${player1.media500.valueMinuteSecondMillisecond}'),
                    CardResultTwo(misura: 'Metri', value: '${player1.meters}'),
                    CardResultTwo(
                        misura: 'Tempo in secondi',
                        value: '${player1.time.inSeconds}'),
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
