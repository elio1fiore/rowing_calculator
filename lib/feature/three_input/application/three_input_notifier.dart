import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:row_calculator/feature/three_input/application/three_input_page_player.dart';
import 'package:row_calculator/router/app_router.dart';
import 'package:row_calculator/router/app_router.gr.dart';
import 'package:row_calculator/util/form_validators.dart';

part 'three_input_notifier.freezed.dart';

@freezed
class ThreeInputState with _$ThreeInputState {
  const factory ThreeInputState.inputPageTime() = _InputPageTime;
  const factory ThreeInputState.inputPageEnergyExp() = _InputPageEnergyExp;
  const factory ThreeInputState.calculateInProgress() = _CalculateInProgress;
  const factory ThreeInputState.resultPage({
    required ThreeInputPagePlayer player,
  }) = ResultPage;
}

class ThreeInputNotifier extends StateNotifier<ThreeInputState> {
  final AppRouter _appRouter;
  final _controller1 = TextEditingController();
  final _controller2 = TextEditingController();
  final _controller3 = TextEditingController();

  bool selectedTime = true;
  bool selectedEnergyExp = false;
  TextEditingController get controller1 => _controller1;
  TextEditingController get controller2 => _controller2;
  TextEditingController get controller3 => _controller3;

  FormGroup get form => _form;

  final _form = FormGroup({
    'inputOne': FormControl<String>(
      validators: [
        Validators.required,
      ],
    ),
    'inputTwo': FormControl<String>(
      validators: [
        Validators.required,
        // FormValidators.numberSplit,
      ],
    ),
    'inputThree': FormControl<String>(
      validators: [
        Validators.required,
        // FormValidators.numberSplit,
        Validators.minLength(6),
      ],
    ),
  });

  ThreeInputNotifier(this._appRouter)
      : super(const ThreeInputState.inputPageTime());

  void resetTotalForm() {
    _form.control('inputOne').reset(value: null);
    _form.control('inputTwo').reset(value: null);
    resetThreeForm();
  }

  void resetThreeForm() {
    _form.control('inputThree').reset(value: null);
  }

  void showError() {
    _form.markAllAsTouched();
  }

  bool formIsValid() {
    return _form.valid;
  }

  void onSelectedTimeState(bool value) {
    if (selectedTime) {
      return;
    }

    _controller3.clear();
    selectedTime = true;
    selectedEnergyExp = false;
    state = const ThreeInputState.inputPageTime();
    _form.control('inputThree').setValidators(
      [
        Validators.required,
        Validators.minLength(6),
        // FormValidators.numberSplit,
      ],
      autoValidate: true,
      emitEvent: true,
      updateParent: true,
    );
    resetThreeForm();
  }

  void onSelectedEnergyExpState(bool value) {
    if (selectedEnergyExp) {
      return;
    }

    _controller3.clear();
    selectedTime = false;
    selectedEnergyExp = true;
    state = const ThreeInputState.inputPageEnergyExp();
    _form.control('inputThree').setValidators(
      [
        Validators.required,
        // FormValidators.numberSplit,
      ],
      autoValidate: true,
      emitEvent: true,
      updateParent: true,
    );

    resetThreeForm();
  }

  void goInputPage() {
    _appRouter.navigateBack();
    if (selectedTime) {
      state = const ThreeInputState.inputPageTime();
    } else {
      state = const ThreeInputState.inputPageEnergyExp();
    }
  }

  void goAndResetInputPage() {
    resetTotalForm();
    goInputPage();
  }

  void calculateAndGotoResultPage() {
    state = const ThreeInputState.calculateInProgress();
    _appRouter.pushNamed(NavigatorPath.resultThreeInputPage);
    ThreeInputPagePlayer threeInputPagePlayer;

    if (selectedTime) {
      threeInputPagePlayer = ThreeInputPagePlayer.fromTime(
        personalBest: _form.control('inputOne').value,
        meters: _form.control('inputTwo').value,
        time: _form.control('inputThree').value,
      );
    } else {
      threeInputPagePlayer = ThreeInputPagePlayer.fromEnergyExp(
        personalBest: _form.control('inputOne').value,
        meters: _form.control('inputTwo').value,
        energyExp: _form.control('inputThree').value,
      );
    }

    state = ThreeInputState.resultPage(player: threeInputPagePlayer);
  }
}
