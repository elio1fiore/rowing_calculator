import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'count_hits_notifier.freezed.dart';

@freezed
class CountHitsState with _$CountHitsState {
  const factory CountHitsState.init() = _Init;
  const factory CountHitsState.pressNoTwo(
    int pressVolte,
  ) = _PressNoTwo;
  const factory CountHitsState.hits(
    int hits,
  ) = _Hits;
}

class CountHitsNotifier extends StateNotifier<CountHitsState> {
  int pv = 0;
  int hits = 0;
  final DateTime dt = DateTime.now();
  CountHitsNotifier() : super(const CountHitsState.init());

  void count() {
    final Duration counDt = DateTime.now().difference(dt);

    print(counDt);
  }

  void reset() {
    pv = 0;
    hits = 0;
    state = const CountHitsState.init();
  }
}
