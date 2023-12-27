import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:row_calculator/core/domain/boat.dart';
import 'package:row_calculator/feature/three_input/domain/three_input_page_player.dart';
import 'package:row_calculator/feature/three_input/domain/v2/three_input_player.dart';
import 'package:row_calculator/util/form_validators.dart';

part 'three_input_notifier.freezed.dart';

@freezed
class ThreeInputState with _$ThreeInputState {
  const factory ThreeInputState.inputPageTime() = _InputPageTime;
  const factory ThreeInputState.inputPageEnergyExp() = _InputPageEnergyExp;
}

class ThreeInputNotifier extends StateNotifier<ThreeInputState> {
  final _controller1 = TextEditingController();
  final _controllerBest = TextEditingController();

  final _controller2 = TextEditingController();
  final _controller3 = TextEditingController();

  Boat? boat;

  bool selectedTime = true;
  bool selectedEnergyExp = false;
  TextEditingController get controller1 => _controller1;
  TextEditingController get controllerBest => _controllerBest;

  TextEditingController get controller2 => _controller2;
  TextEditingController get controller3 => _controller3;

  FormGroup get form => _form;

  final _form = FormGroup(
    {
      'inputOne': FormControl<String>(
        validators: [
          Validators.required,
        ],
      ),
      'inputBest': FormControl<String>(
        validators: [
          Validators.required,
        ],
      ),
      'inputTwo': FormControl<String>(
        validators: [
          Validators.required,
          Validators.number,
        ],
      ),
      'inputThree': FormControl<String>(
        validators: [
          Validators.required,
          Validators.minLength(6),
          const NumberSplitValidator(),
        ],
      ),
    },
  );

  ThreeInputNotifier() : super(const ThreeInputState.inputPageTime());

  void setBest(String valueBest) {
    _form.control('inputBest').reset(value: valueBest);
  }

  void setBoat(Boat newBoat) {
    boat = newBoat;
  }

  void resetInPartForm() {
    _form.control('inputOne').reset(value: null);
    _form.control('inputBest').reset(value: null);
    resetThreeForm();
  }

  void resetTotalForm() {
    _form.control('inputOne').reset(value: null);
    _form.control('inputBest').reset(value: null);
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
        const NumberSplitValidator(),
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
        Validators.number,
      ],
      autoValidate: true,
      emitEvent: true,
      updateParent: true,
    );

    resetThreeForm();
  }

  ThreeInputPlayer calculate() {
    return state.when(
      inputPageEnergyExp: () {
        return ThreeInputPlayer.fromEnergyExp(
          personalBest: _form.control('inputBest').value,
          meters: _form.control('inputTwo').value,
          energyExp: _form.control('inputThree').value,
          boatBest: _form.control('inputBest').value,
          nameBoat: boat!.name,
        );
      },
      inputPageTime: () {
        return ThreeInputPlayer.fromTime(
          personalBest: _form.control('inputBest').value,
          meters: _form.control('inputTwo').value,
          time: _form.control('inputThree').value,
          boatBest: _form.control('inputBest').value,
          nameBoat: boat!.name,
        );
      },
    );
  }
}
