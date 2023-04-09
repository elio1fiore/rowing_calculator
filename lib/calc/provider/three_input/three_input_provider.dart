import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:row_calculator/calc/application/three_input_notifier.dart';
import 'package:row_calculator/shared/router_provider.dart';

final threeInputNotifierProvider =
    StateNotifierProvider<ThreeInputNotifier, ThreeInputState>(
  (ref) => ThreeInputNotifier(ref.watch(appRouterProvider)),
);
