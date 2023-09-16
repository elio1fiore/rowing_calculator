import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:row_calculator/core/domain/interval_time.dart';
import 'package:row_calculator/feature/speed_strokes/application/speed_notifier.dart';

final speedProvider =
    StateNotifierProvider.autoDispose<SpeedNotifier, SpeedState>(
  (ref) {
    return SpeedNotifier();
  },
);

final medProvider = Provider.autoDispose<IntervalTime>(
  (ref) {
    List<int> listSec = [];
    final state = ref.watch(speedProvider);

    return state.maybeWhen(
      orElse: () => const IntervalTime(seconds: 0),
      dataPosition: (position, _) {
        if (listSec.length == 15) {
          listSec.remove(listSec[0]);
        }
        listSec.add(_.duration.inSeconds);

        int med = 0;
        for (var intero in listSec) {
          med = med + intero;
        }

        return IntervalTime(seconds: med);
      },
    );
  },
);
