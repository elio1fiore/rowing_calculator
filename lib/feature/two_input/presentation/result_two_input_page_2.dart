import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:row_calculator/core/presentation/card_result.dart';
import 'package:row_calculator/core/domain/feature_entity.dart';
import 'package:row_calculator/core/shared/database_feature_provider.dart';
import 'package:row_calculator/feature/two_input/domain/two_input_page_player_2.dart';
import 'package:row_calculator/feature/two_input/shared/two_input_provider.dart';

class ResultTwoInputPage2 extends ConsumerWidget {
  final TwoInputPagePlayer2 player2;

  const ResultTwoInputPage2({
    super.key,
    required this.player2,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final noty = ref.read(twoInputNotifierProvider.notifier);
    final featureNotyRead = ref.read(twoFeatureNotifierProvider.notifier);
    final db = ref.read(featuresDatabaseProvider);

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
                  child: Text('Nuovo Calcolo from 2'),
                ),
                onPressed: () async {
                  final fe = FeatureEntity(
                    dateTime: DateTime.now(),
                    player: player2.toJson(),
                    description: "",
                    isImportant: false,
                    title: "TwoTwo",
                  );
                  await db.create(fe);
                  noty.resetValueForm();
                  featureNotyRead.setStateInput();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
