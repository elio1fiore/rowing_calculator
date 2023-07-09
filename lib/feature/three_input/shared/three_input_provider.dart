import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:row_calculator/feature/three_input/application/three_input_notifier.dart';
import 'package:row_calculator/router/app_router.dart';

final threeInputNotifierProvider =
    StateNotifierProvider<ThreeInputNotifier, ThreeInputState>(
  (ref) => ThreeInputNotifier(ref.watch(appRouterProvider)),
);
