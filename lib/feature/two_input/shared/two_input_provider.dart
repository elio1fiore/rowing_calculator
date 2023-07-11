import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:row_calculator/feature/two_input/application/two_input_notifier.dart';
import 'package:row_calculator/router/app_router.dart';

final twoInputNotifierProvider =
    StateNotifierProvider<TwoInputNotifier, TwoInputState>(
  (ref) => TwoInputNotifier(
    ref.watch(appRouterProvider),
  ),
);
