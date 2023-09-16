import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:row_calculator/feature/three_input/domain/v2/three_input_player.dart';

part 'three_feature_notifier.freezed.dart';

@freezed
class ThreeFeatureState with _$ThreeFeatureState {
  const factory ThreeFeatureState.input() = _Input;
  const factory ThreeFeatureState.result(ThreeInputPlayer player) = _Result;
  const factory ThreeFeatureState.loading() = _Loading;
  const factory ThreeFeatureState.error() = _Error;
}

class ThreeFeatureNotifier extends StateNotifier<ThreeFeatureState> {
  ThreeFeatureNotifier() : super(const ThreeFeatureState.input());

  void setStateInput() {
    _setState(const ThreeFeatureState.input());
  }

  void setStateResult(ThreeInputPlayer player) {
    _setState(ThreeFeatureState.result(player));
  }

  void setStateError() {
    _setState(const ThreeFeatureState.error());
  }

  void setStateLoading() {
    _setState(const ThreeFeatureState.loading());
  }

  _setState(ThreeFeatureState newState) {
    newState.when(
      error: () {
        state = const ThreeFeatureState.error();
      },
      input: () {
        state = const ThreeFeatureState.input();
      },
      loading: () {
        state = const ThreeFeatureState.loading();
      },
      result: (player) {
        state = ThreeFeatureState.result(player);
      },
    );
  }
}
