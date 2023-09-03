import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:row_calculator/feature/two_input/application/two_feature_notifier.dart';
import 'package:row_calculator/feature/two_input/application/two_input_notifier.dart';

final twoFeatureNotifierProvider =
    StateNotifierProvider<TwoFeatureNotifier, TwoFeatureState>(
  (ref) {
    return TwoFeatureNotifier();
  },
);

final twoInputNotifierProvider =
    StateNotifierProvider.autoDispose<TwoInputNotifier, TwoInputState>(
  (ref) => TwoInputNotifier(),
);
