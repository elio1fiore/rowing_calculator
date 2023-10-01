import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:row_calculator/core/historyV2/domain/feature.dart';
import 'package:row_calculator/core/historyV2/domain/feature_util.dart';
import 'package:row_calculator/core/historyV2/shared/history_provider.dart';

import 'package:row_calculator/feature/one_input/domain/v2/one_input_player.dart';
import 'package:row_calculator/feature/one_input/shared/one_input_provider.dart';
import 'package:row_calculator/widget/one_result_core_view.dart';

class OneResultView extends ConsumerWidget {
  const OneResultView({
    super.key,
    required this.player,
  });

  final OneInputPlayer player;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final featureNotyRead = ref.read(oneFeatureNotifierProvider.notifier);
    final inputNotyRead = ref.read(oneInputNotifierProvider.notifier);
    final db = ref.read(featuresDatabaseProvider);
    double appBarHeight = Scaffold.of(context).appBarMaxHeight ?? 56.0;

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: MediaQuery.of(context).size.height - appBarHeight,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              OneResultCoreView(player: player),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 0),
                child: ElevatedButton(
                  onPressed: () async {
                    final fe = Feature(
                      dateTime: DateTime.now(),
                      description: "",
                      isImportant: false,
                      player: UnionPlayer.one(player),
                      title: "Input One",
                      featureType: FeatureType.one,
                    );
                    await db.create(fe);

                    inputNotyRead.resetValueForm();
                    featureNotyRead.setStateInput();
                  },
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Text('Nuovo Calcolo'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
