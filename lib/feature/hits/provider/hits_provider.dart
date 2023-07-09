import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:row_calculator/feature/hits/application/count_hits_notifier.dart';

final countHitsProvider =
    StateNotifierProvider<CountHitsNotifier, CountHitsState>(
  (ref) {
    return CountHitsNotifier();
  },
);
