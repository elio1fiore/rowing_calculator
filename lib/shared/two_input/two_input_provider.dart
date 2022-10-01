import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:row_calculator/application/two_input_notifier.dart';
import 'package:row_calculator/shared/router_provider.dart';

final twoInputNotifierProvider =
    StateNotifierProvider<TwoInputNotifier, TwoInputState>(
  (ref) => TwoInputNotifier(
    ref.watch(appRouterProvider),
  ),
);
