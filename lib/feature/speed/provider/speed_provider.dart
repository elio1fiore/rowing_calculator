import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:row_calculator/core/domain/interval_time.dart';
import 'package:row_calculator/feature/speed/application/speed_notifier.dart';

final speedProvider = StateNotifierProvider<SpeedNotifier, SpeedState>(
  (ref) {
    return SpeedNotifier();
  },
);

final medProvider = Provider<IntervalTime>(
  (ref) {
    List<int> listSec = [];
    final state = ref.watch(speedProvider);

    return state.maybeWhen(
      orElse: () => IntervalTime(seconds: 0),
      dataPosition: (position, _) {
        if (listSec.length == 15) {
          listSec.remove(listSec[0]);
        }
        listSec.add(_.inSeconds);

        int med = 0;
        for (var intero in listSec) {
          med = med + intero;
        }

        return IntervalTime(seconds: med);
      },
    );
  },
);
//Se fai 4 metri al secondo 
//Dividi 500 / 4 => Ottieni i secondi => DateTime