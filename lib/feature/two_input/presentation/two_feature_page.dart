import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:row_calculator/core/presentation/loading.dart';
import 'package:row_calculator/feature/two_input/presentation/result_two_input_page_1.dart';
import 'package:row_calculator/feature/two_input/presentation/result_two_input_page_2.dart';
import 'package:row_calculator/feature/two_input/presentation/two_input_view_v2.dart';
import 'package:row_calculator/feature/two_input/shared/two_input_provider.dart';

@RoutePage()
class TwoFeaturePage extends ConsumerStatefulWidget {
  const TwoFeaturePage({super.key});

  @override
  ConsumerState<TwoFeaturePage> createState() => _TwoFeaturePageState();
}

class _TwoFeaturePageState extends ConsumerState<TwoFeaturePage> {
  @override
  Widget build(BuildContext context) {
    final state = ref.watch(twoFeatureNotifierProvider);
    return Scaffold(
      body: SafeArea(
        child: state.maybeWhen(
          orElse: () => Container(),
          resultOne: (player) => ResultTwoInputPage1(player1: player),
          resultTwo: (player) => ResultTwoInputPage2(player2: player),
          error: () => Text("Error"),
          input: () => const TwoInputViewV2(),
          loading: () => const LoadingPage(),
        ),
      ),
    );
  }
}
