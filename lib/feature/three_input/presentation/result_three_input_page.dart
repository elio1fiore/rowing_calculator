import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:row_calculator/core/historyV2/domain/feature.dart';
import 'package:row_calculator/core/historyV2/domain/feature_util.dart';
import 'package:row_calculator/core/historyV2/shared/history_provider.dart';
import 'package:row_calculator/core/presentation/card_result.dart';
import 'package:row_calculator/feature/three_input/domain/v2/three_input_player.dart';

import 'package:row_calculator/feature/three_input/shared/three_input_provider.dart';
import 'package:row_calculator/widget/three_result_core_view.dart';

class ResultThreeInputPage extends ConsumerWidget {
  final ThreeInputPlayer player;
  const ResultThreeInputPage({
    super.key,
    required this.player,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(threeInputNotifierProvider);

    return state.maybeWhen(
      orElse: () => const Text('Qualcosa è andato storto'),
      inputPageTime: () {
        print("T");
        return _ResultThreeInputPageT(
          player: player,
        );
      },
      inputPageEnergyExp: () {
        print("D");
        return _ResultThreeInputPageT(
          player: player,
        );
      },
    );
  }
}

class _ResultThreeInputPageT extends ConsumerWidget {
  final ThreeInputPlayer player;

  const _ResultThreeInputPageT({
    super.key,
    required this.player,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notyInput = ref.read(threeInputNotifierProvider.notifier);
    final notyFeature = ref.read(threeFeatureNotifierProvider.notifier);

    final db = ref.read(featuresDatabaseProvider);

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ThreeResultCoreView(player: player),
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
                  onLongPress: () async {
                    final fe = Feature(
                      dateTime: DateTime.now(),
                      description: "",
                      isImportant: false,
                      player: UnionPlayer.three(player),
                      title: "Three Input",
                      featureType: FeatureType.three,
                    );
                    await db.create(fe);

                    notyInput.resetTotalForm();
                    notyFeature.setStateInput();
                  },
                  onPressed: () async {
                    final fe = Feature(
                      dateTime: DateTime.now(),
                      description: "",
                      isImportant: false,
                      player: UnionPlayer.three(player),
                      title: "Three Input",
                      featureType: FeatureType.three,
                    );
                    await db.create(fe);

                    notyInput.resetInPartForm();
                    notyFeature.setStateInput();
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



// class _ResultThreeInputPageD extends ConsumerWidget {
//   final ThreeInputPlayer player;

//   const _ResultThreeInputPageD({super.key, required this.player});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final notyInput = ref.read(threeInputNotifierProvider.notifier);
//     final notyFeature = ref.read(threeFeatureNotifierProvider.notifier);

//     final db = ref.read(featuresDatabaseProvider);

//     return SafeArea(
//       child: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: SingleChildScrollView(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: [
//               Card(
//                 elevation: 1.5,
//                 clipBehavior: Clip.antiAlias,
//                 shape: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(10),
//                   borderSide: const BorderSide(
//                     width: 1.5,
//                   ),
//                 ),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.end,
//                   children: [
//                     CardResult(
//                       misura: 'Miglior Tempo',
//                       value:
//                           player.personalBest.valueMinuteSecondMillisecondOne,
//                     ),
//                     CardResult(
//                       misura: 'Metri',
//                       value: player.meters.toString(),
//                     ),
//                     CardResult(
//                       misura: 'Tempo Previsto',
//                       value: player.time.valueMinuteSecondMillisecondOne,
//                     ),
//                     CardResult(
//                       misura: 'Media 500',
//                       value: player.media500.valueMinuteSecondMillisecondOne,
//                     ),
//                     CardResult(
//                       misura: 'Dispendio %',
//                       value: player.energyExp.toString(),
//                     ),
//                   ],
//                 ),
//               ),
//               const SizedBox(
//                 height: 20,
//               ),
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 30),
//                 child: ElevatedButton(
//                   child: const Padding(
//                     padding: EdgeInsets.symmetric(vertical: 20),
//                     child: Text('Nuovo Calcolo'),
//                   ),
//                   onPressed: () async {
//                     final fe = Feature(
//                       dateTime: DateTime.now(),
//                       description: "",
//                       isImportant: false,
//                       player: UnionPlayer.three(player),
//                       title: "Three Input",
//                       featureType: FeatureType.three,
//                     );
//                     await db.create(fe);

//                     notyInput.resetTotalForm();
//                     notyFeature.setStateInput();
//                   },
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
