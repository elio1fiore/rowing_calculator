import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:row_calculator/calc/application/two_input_notifier.dart';
import 'package:row_calculator/router/router_provider.dart';

final twoInputNotifierProvider =
    StateNotifierProvider<TwoInputNotifier, TwoInputState>(
  (ref) => TwoInputNotifier(
    ref.watch(appRouterProvider),
  ),
);