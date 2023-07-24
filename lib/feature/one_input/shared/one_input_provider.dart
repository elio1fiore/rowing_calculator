import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:row_calculator/feature/one_input/application/one_feature_notifier.dart';
import 'package:row_calculator/feature/one_input/application/one_input_notifier.dart';

final oneFeatureNotifierProvider =
    StateNotifierProvider<OneFeatureNotifier, OneFeatureState>(
  (ref) {
    return OneFeatureNotifier();
  },
);

final oneInputNotifierProvider =
    StateNotifierProvider<OneInputNotifier, OneInputState>(
  (ref) => OneInputNotifier(),
);
