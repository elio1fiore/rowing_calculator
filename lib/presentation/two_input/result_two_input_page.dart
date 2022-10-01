import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:row_calculator/player/two_input_player/two_input_page_player_1.dart';
import 'package:row_calculator/player/two_input_player/two_input_page_player_2.dart';
import 'package:row_calculator/presentation/loading_page.dart';
import 'package:row_calculator/presentation/two_input/result_two_input_page_1.dart';
import 'package:row_calculator/presentation/two_input/result_two_input_page_2.dart';
import 'package:row_calculator/shared/two_input/two_input_provider.dart';

class ResultTwoInputPage extends ConsumerWidget {
  const ResultTwoInputPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(twoInputNotifierProvider);

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
          if (player is TwoInputPagePlayer1) {
            return ResultTwoInputPage1(
              player1: player,
            );
          } else if (player is TwoInputPagePlayer2) {
            return ResultTwoInputPage2(
              player2: player,
            );
          } else {
            return Container(
              child: Text('hey'),
            );
          }
        },
      ),
    );
  }
}
