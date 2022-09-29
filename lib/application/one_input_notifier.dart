import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:row_calculator/player/one_input_page_player.dart';
import 'package:row_calculator/router/app_router.gr.dart';
import 'package:row_calculator/util/form_validators.dart';

import '../router/app_router.dart';

part 'one_input_notifier.freezed.dart';

@freezed
class OneInputState with _$OneInputState {
  const factory OneInputState.inputPageMinute() = _InputPageMinute;
  const factory OneInputState.inputPageWatt() = _InputPageWatt;
  const factory OneInputState.calculateInProgress() = _CalculateInProgress;
  const factory OneInputState.resultPage({
    required OneInputPagePlayer player,
  }) = _ResultPage;
}

class OneInputNotifier extends StateNotifier<OneInputState> {
  final AppRouter _appRouter;
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
          FormValidators.numberSplit,
          Validators.minLength(9),
        ],
      ),
    },
  );

  OneInputNotifier(this._appRouter)
      : super(const OneInputState.inputPageMinute());

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
    _controller.clear();

    selectedWatt = false;
    selectedMinute = true;
    state = const OneInputState.inputPageMinute();
    _form.control('inputOne').setValidators(
      [
        Validators.required,
        Validators.minLength(9),
        FormValidators.numberSplit,
      ],
      autoValidate: true,
      emitEvent: true,
      updateParent: true,
    );

    resetValueForm();
  }

  void onSelectedWattState(bool value) {
    _controller.clear();

    selectedWatt = true;
    selectedMinute = false;
    state = const OneInputState.inputPageWatt();

    _form.control('inputOne').setValidators(
      [
        Validators.required,
        FormValidators.numberSplit,
      ],
      autoValidate: true,
      emitEvent: true,
      updateParent: true,
    );

    resetValueForm();
  }

  void goInputPage() {
    _appRouter.navigateBack();
    if (selectedMinute) {
      state = const OneInputState.inputPageMinute();
    } else {
      state = const OneInputState.inputPageWatt();
    }
  }

  void goAndResetInputPage() {
    resetValueForm();
    goInputPage();
  }

  void calculateAndGotoResultPage() {
    state = const OneInputState.calculateInProgress();
    _appRouter.pushNamed(NavigatorPath.resultOneInputPage);
    OneInputPagePlayer oneInputPagePlayer;
    if (selectedMinute) {
      oneInputPagePlayer =
          OneInputPagePlayer.fromMedia500(_form.control('inputOne').value);
    } else {
      oneInputPagePlayer =
          OneInputPagePlayer.fromWatt(_form.control('inputOne').value);
    }

    state = OneInputState.resultPage(player: oneInputPagePlayer);
  }
}
