import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'one_input_notifier.freezed.dart';

@freezed
class OneInputState with _$OneInputState {
  const factory OneInputState.initial() = _Initial;
  const factory OneInputState.insertion() = _Insertion;
  const factory OneInputState.calculateInProgress() = _CalculateInProgress;
  const factory OneInputState.calculateSuccess() = _CalculateSuccess;
}

class OneInputNotifier extends StateNotifier<OneInputState> {
  OneInputNotifier() : super(const OneInputState.initial());
}
