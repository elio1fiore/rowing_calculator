import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:row_calculator/speed/application/speed_notifier.dart';

final speedProvider = StateNotifierProvider<SpeedNotifier, SpeedState>(
  (ref) {
    return SpeedNotifier();
  },
);
