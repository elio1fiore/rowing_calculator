import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:row_calculator/feature/one_input/domain/v2/one_input_player.dart';

part 'one_feature_notifier.freezed.dart';

@freezed
class OneFeatureState with _$OneFeatureState {
  const factory OneFeatureState.input() = _Input;
  const factory OneFeatureState.result({
    required OneInputPlayer player,
  }) = _Result;
  const factory OneFeatureState.loading() = _Loading;
  const factory OneFeatureState.error() = _Error;
}

class OneFeatureNotifier extends StateNotifier<OneFeatureState> {
  OneFeatureNotifier() : super(const OneFeatureState.input());

  void setStateInput() {
    _setState(const OneFeatureState.input());
  }

  void setStateResult(OneInputPlayer player) {
    _setState(OneFeatureState.result(player: player));
  }

  void setStateError() {
    _setState(const OneFeatureState.error());
  }

  void setStateLoading() {
    _setState(const OneFeatureState.loading());
  }

  _setState(OneFeatureState newState) {
    newState.when(
      error: () {
        state = const OneFeatureState.error();
      },
      input: () {
        state = const OneFeatureState.input();
      },
      loading: () {
        state = const OneFeatureState.loading();
      },
      result: (player) {
        state = OneFeatureState.result(player: player);
      },
    );
  }
}
