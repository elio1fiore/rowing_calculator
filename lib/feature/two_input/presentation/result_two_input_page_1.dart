import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:row_calculator/core/historyV2/domain/feature.dart';
import 'package:row_calculator/core/historyV2/domain/feature_util.dart';
import 'package:row_calculator/core/historyV2/shared/history_provider.dart';
import 'package:row_calculator/core/presentation/card_result.dart';
import 'package:row_calculator/feature/two_input/domain/v2/two_input_player_1.dart';
import 'package:row_calculator/feature/two_input/shared/two_input_provider.dart';
import 'package:row_calculator/widget/two_result_core_view_1.dart';

class ResultTwoInputPage1 extends ConsumerWidget {
  final TwoInputPlayer1 player1;

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
              TwoResultCoreView1(player1: player1),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: ElevatedButton(
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Text('Nuovo Calcolo 1'),
                  ),
                  onPressed: () async {
                    final fe = Feature(
                      dateTime: DateTime.now(),
                      player: UnionPlayer.twoOne(player1),
                      description: "",
                      isImportant: false,
                      title: "Input Two 1",
                      featureType: FeatureType.two1,
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
