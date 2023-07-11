import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:row_calculator/core/presentation/card_result.dart';
import 'package:row_calculator/core/presentation/loading_page.dart';
import 'package:row_calculator/feature/three_input/application/three_input_page_player.dart';
import 'package:row_calculator/feature/three_input/shared/three_input_provider.dart';

class ResultThreeInputPage extends ConsumerWidget {
  const ResultThreeInputPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(threeInputNotifierProvider);
    final noty = ref.watch(threeInputNotifierProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Result'),
      ),
      body: state.maybeWhen(
        orElse: () => const Text('Qualcosa è andato storto'),
        calculateInProgress: () {
          return const LoadingPage();
        },
        resultPage: (player) {
          if (noty.selectedTime) {
            return _ResultThreeInputPageT(
              player: player,
            );
          } else {
            return _ResultThreeInputPageD(
              player: player,
            );
          }
        },
      ),
    );
  }
}

class _ResultThreeInputPageT extends ConsumerWidget {
  final ThreeInputPagePlayer player;

  const _ResultThreeInputPageT({
    super.key,
    required this.player,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final noty = ref.read(threeInputNotifierProvider.notifier);

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
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
                      misura: 'Best Time',
                      value:
                          player.personalBest.valueMinuteSecondMillisecondOne,
                    ),
                    CardResult(
                      misura: 'Metri',
                      value: player.meters.toString(),
                    ),
                    CardResult(
                      misura: 'Tempo',
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
      ),
    );
  }
}

class _ResultThreeInputPageD extends ConsumerWidget {
  final ThreeInputPagePlayer player;

  const _ResultThreeInputPageD({super.key, required this.player});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final noty = ref.read(threeInputNotifierProvider.notifier);
    print('d');

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
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
                      misura: 'Miglior Tempo',
                      value:
                          player.personalBest.valueMinuteSecondMillisecondOne,
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
                      value: player.energyExp.toInt().toString(),
                    ),
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
                    child: Text('Nuovo Calcolo'),
                  ),
                  onPressed: (() => noty.goAndResetInputPage()),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
