import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:row_calculator/core/historyV2/domain/feature.dart';
import 'package:row_calculator/core/historyV2/domain/feature_util.dart';
import 'package:row_calculator/core/historyV2/shared/history_provider.dart';
import 'package:row_calculator/core/presentation/card_result.dart';
import 'package:row_calculator/feature/two_input/domain/v2/two_input_player_2.dart';

import 'package:row_calculator/feature/two_input/shared/two_input_provider.dart';
import 'package:row_calculator/widget/two_result_core_view_2.dart';

class ResultTwoInputPage2 extends ConsumerWidget {
  final TwoInputPlayer2 player2;

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
                  width: 1.5,
                ),
              ),
              child: SingleChildScrollView(
                child: TwoResultCoreView2(player2: player2),
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
                  child: Text('Nuovo Calcolo 2'),
                ),
                onPressed: () async {
                  final fe = Feature(
                    dateTime: DateTime.now(),
                    player: UnionPlayer.twoTwo(player2),
                    description: "",
                    isImportant: false,
                    title: "TwoTwo",
                    featureType: FeatureType.two2,
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
