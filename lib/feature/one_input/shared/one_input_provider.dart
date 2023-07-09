import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:row_calculator/feature/one_input/application/one_input_notifier.dart';
import 'package:row_calculator/router/router_provider.dart';

final oneInputNotifierProvider =
    StateNotifierProvider<OneInputNotifier, OneInputState>(
  (ref) => OneInputNotifier(
    ref.watch(appRouterProvider),
  ),
);
