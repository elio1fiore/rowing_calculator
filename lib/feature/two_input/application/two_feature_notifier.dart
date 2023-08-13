import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'two_feature_notifier.freezed.dart';

@freezed
class TwoFeatureState with _$TwoFeatureState {
  const factory TwoFeatureState.input() = _Input;
  const factory TwoFeatureState.result() = _Result;
  const factory TwoFeatureState.loading() = _Loading;
  const factory TwoFeatureState.error() = _Error;
}

class TwoFeatureNotifier extends StateNotifier<TwoFeatureState> {
  TwoFeatureNotifier() : super(const TwoFeatureState.input());

  void setStateInput() {
    _setState(const TwoFeatureState.input());
  }

  void setStateResult() {
    _setState(const TwoFeatureState.result());
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
      result: () {
        state = const TwoFeatureState.result();
      },
    );
  }
}
