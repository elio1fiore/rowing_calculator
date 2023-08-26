import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:row_calculator/feature/speed_strokes/application/stokers_notifier.dart';

final stokersNotifierProvider =
    StateNotifierProvider.autoDispose<StokersNotifier, StokersState>(
  (ref) {
    return StokersNotifier();
  },
);
