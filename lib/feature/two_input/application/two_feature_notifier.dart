import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:row_calculator/feature/two_input/domain/two_input_page_player_1.dart';
import 'package:row_calculator/feature/two_input/domain/two_input_page_player_2.dart';

part 'two_feature_notifier.freezed.dart';

@freezed
class TwoFeatureState with _$TwoFeatureState {
  const factory TwoFeatureState.input() = _Input;
  const factory TwoFeatureState.resultOne(
    TwoInputPagePlayer1 player,
  ) = _ResultOne;
  const factory TwoFeatureState.resultTwo(
    TwoInputPagePlayer2 player,
  ) = _ResultTwo;
  const factory TwoFeatureState.loading() = _Loading;
  const factory TwoFeatureState.error() = _Error;
}

class TwoFeatureNotifier extends StateNotifier<TwoFeatureState> {
  TwoFeatureNotifier() : super(const TwoFeatureState.input());

  void setStateInput() {
    _setState(const TwoFeatureState.input());
  }

  void setStateResultOne(TwoInputPagePlayer1 player) {
    _setState(TwoFeatureState.resultOne(player));
  }

  void setStateResultTwo(TwoInputPagePlayer2 player) {
    _setState(TwoFeatureState.resultTwo(player));
  }

  void setStateError() {
    _setState(const TwoFeatureState.error());
  }

  void setStateLoading() {
    _setState(const TwoFeatureState.loading());
  }

  _setState(TwoFeatureState newState) {
    newState.when(
      error: () {
        state = const TwoFeatureState.error();
      },
      input: () {
        state = const TwoFeatureState.input();
      },
      loading: () {
        state = const TwoFeatureState.loading();
      },
      resultOne: (player) {
        state = TwoFeatureState.resultOne(player);
      },
      resultTwo: (player) {
        state = TwoFeatureState.resultTwo(player);
      },
    );
  }
}
