import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:row_calculator/feature/three_input/shared/three_input_provider.dart';

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
          result: () => const Text("Result"),
          error: () => Container(), //Error Page
          input: () => const Text("Input"),
          loading: () => const Text("Loading"),
        ),
      ),
    );
  }
}
