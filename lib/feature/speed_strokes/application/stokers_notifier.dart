import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'stokers_notifier.freezed.dart';

@freezed
class StokersState with _$StokersState {
  const factory StokersState.init() = _Init;
  const factory StokersState.first() = _First;
  const factory StokersState.multipleTap() = _MultipleTap;
}

class StokersNotifier extends StateNotifier<StokersState> {
  DateTime? dt;
  DateTime? dt2;

  final _streamController = StreamController<double>();

  Stream<double> get streamController => _streamController.stream;

  StokersNotifier() : super(const StokersState.init());

  goFirst() {
    dt = DateTime.now();
    state = const StokersState.first();
  }

  goMultipleTap() {
    dt2 = DateTime.now();
    Duration? difference = dt2?.difference(dt!);

    double frq = (60000.0 / difference!.inMilliseconds);

    _streamController.sink.add(frq);

    state = const StokersState.multipleTap();

    dt = dt2;
  }

  goInit() {
    state = const StokersState.init();
    dt = null;
    dt2 = null;
    _streamController.close();
  }
}
