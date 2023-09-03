import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:row_calculator/feature/three_input/presentation/result_three_input_page.dart';
import 'package:row_calculator/feature/three_input/presentation/three_input_view_v2.dart';
import 'package:row_calculator/feature/three_input/shared/three_input_provider.dart';

@RoutePage()
class ThreeFeaturePage extends ConsumerStatefulWidget {
  const ThreeFeaturePage({super.key});

  @override
  ConsumerState<ThreeFeaturePage> createState() => _ThreeFeaturePageState();
}

class _ThreeFeaturePageState extends ConsumerState<ThreeFeaturePage> {
  @override
  Widget build(BuildContext context) {
    final state = ref.watch(threeFeatureNotifierProvider);

    return Scaffold(
      body: SafeArea(
        child: state.maybeWhen(
          orElse: () => Container(), //Redirect Page
          result: (player) => ResultThreeInputPage(
            player: player,
          ),
          error: () => Container(), //Error Page
          input: () => const ThreeInputViewV2(),
          loading: () => const Text("Loading"),
        ),
      ),
    );
  }
}
