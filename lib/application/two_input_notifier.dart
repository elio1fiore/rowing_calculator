import 'package:freezed_annotation/freezed_annotation.dart';
part 'two_input_notifier.freezed.dart';

@freezed
class TwoInputState with _$TwoInputState {
  const factory TwoInputState.inputPageWT() = InputPageWT;
  const factory TwoInputState.inputPageMD() = InputPageMD;
  const factory TwoInputState.inputPageMP() = InputPageMD;
  const factory TwoInputState.calculateInProgress() = _CalculateInProgress;
}

// Watt - tempo
// media500 - tempo 
// media 500- percentuale