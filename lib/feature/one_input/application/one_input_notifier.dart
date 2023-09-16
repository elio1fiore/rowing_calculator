import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reactive_forms/reactive_forms.dart';

import 'package:row_calculator/feature/one_input/domain/one_input_page_player.dart';
import 'package:row_calculator/feature/one_input/domain/v2/one_input_player.dart';
import 'package:row_calculator/util/form_validators.dart';

part 'one_input_notifier.freezed.dart';

@freezed
class OneInputState with _$OneInputState {
  const factory OneInputState.minute() = _InputPageMinute;
  const factory OneInputState.watt() = _InputPageWatt;
}

class OneInputNotifier extends StateNotifier<OneInputState> {
  final _controller = TextEditingController();

  bool selectedMinute = true;
  bool selectedWatt = false;

  TextEditingController get controller => _controller;
  FormGroup get form => _form;

  final _form = FormGroup(
    {
      'inputOne': FormControl<String>(
        validators: [
          Validators.required,
          const NumberSplitValidator(),
          Validators.minLength(6),
        ],
      ),
    },
  );

  OneInputNotifier() : super(const OneInputState.minute());

  void resetValueForm() {
    _form.control('inputOne').reset(value: null);
  }

  void showError() {
    _form.markAllAsTouched();
  }

  bool formIsValid() {
    return _form.valid;
  }

  void onSelectedMinuteState(bool value) {
    if (selectedMinute) {
      return;
    }
    _controller.clear();

    selectedWatt = false;
    selectedMinute = true;
    state = const OneInputState.minute();
    _form.control('inputOne').setValidators(
      [
        Validators.required,
        Validators.minLength(6),
        const NumberSplitValidator(),
      ],
      autoValidate: true,
      emitEvent: true,
      updateParent: true,
    );

    resetValueForm();
  }

  void onSelectedWattState(bool value) {
    if (selectedWatt) {
      return;
    }
    _controller.clear();

    selectedWatt = true;
    selectedMinute = false;
    state = const OneInputState.watt();

    _form.control('inputOne').setValidators(
      [
        Validators.required,
        Validators.number,
      ],
      autoValidate: true,
      emitEvent: true,
      updateParent: true,
    );

    resetValueForm();
  }

  OneInputPlayer calculate() {
    return state.when(
      minute: () {
        return OneInputPlayer.fromMedia500(
          _form.control('inputOne').value,
        );
      },
      watt: () {
        return OneInputPlayer.fromWatt(
          _form.control('inputOne').value,
        );
      },
    );
  }
}
