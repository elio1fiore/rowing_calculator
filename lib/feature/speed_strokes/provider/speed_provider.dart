import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:row_calculator/feature/speed_strokes/application/speed_notifier.dart';

final speedProvider =
    StateNotifierProvider.autoDispose<SpeedNotifier, SpeedState>(
  (ref) {
    return SpeedNotifier();
  },
);
