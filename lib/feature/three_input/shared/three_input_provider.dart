import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:row_calculator/feature/three_input/application/three_feature_notifier.dart';
import 'package:row_calculator/feature/three_input/application/three_input_notifier.dart';

final threeFeatureNotifierProvider =
    StateNotifierProvider<ThreeFeatureNotifier, ThreeFeatureState>(
  (ref) {
    return ThreeFeatureNotifier();
  },
);

final threeInputNotifierProvider =
    StateNotifierProvider<ThreeInputNotifier, ThreeInputState>(
  (ref) => ThreeInputNotifier(),
);
