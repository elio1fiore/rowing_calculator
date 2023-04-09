import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:row_calculator/calc/player/two_input_player/two_input_page_player.dart';
import 'package:row_calculator/calc/player/two_input_player/two_input_page_player_1.dart';
import 'package:row_calculator/calc/player/two_input_player/two_input_page_player_2.dart';
import 'package:row_calculator/router/app_router.dart';
import 'package:row_calculator/router/app_router.gr.dart';
import 'package:row_calculator/util/form_validators.dart';
part 'two_input_notifier.freezed.dart';

@freezed
class TwoInputState with _$TwoInputState {
  const factory TwoInputState.inputPageWT() = InputPageWT;
  const factory TwoInputState.inputPageMT() = InputPageMT;
  const factory TwoInputState.inputPageMP() = InputPageMP;
  const factory TwoInputState.calculateInProgress() = _CalculateInProgress;
  const factory TwoInputState.resultPage({
    required TwoInputPagePlayer player,
  }) = _ResultPage;
}

class TwoInputNotifier extends StateNotifier<TwoInputState> {
  final AppRouter _appRouter;
  final _controller1 = TextEditingController();
  final _controller2 = TextEditingController();

  bool selectedWatt = true;
  bool selectedMedia = false;
  bool selectedTempo = true;
  bool selectedPerc = false;

  TextEditingController get controller1 => _controller1;

  TextEditingController get controller2 => _controller2;

  FormGroup get form => _form;

  final _form = FormGroup({
    'inputOne': FormControl<String>(
      validators: [
        Validators.required,
        FormValidators.numberSplit,
      ],
    ),
    'inputTwo': FormControl<String>(
      validators: [
        Validators.required,
        Validators.minLength(6),
        FormValidators.numberSplit,
      ],
    ),
  });

  TwoInputNotifier(this._appRouter) : super(const TwoInputState.inputPageWT());

  void resetValueForm() {
    resetValueForm1();
    resetValueForm2();
  }

  void resetValueForm2() {
    _form.control('inputTwo').reset(value: null);
  }

  void resetValueForm1() {
    _form.control('inputOne').reset(value: null);
  }

  void showError() {
    _form.markAllAsTouched();
  }

  bool formIsValid() {
    return _form.valid;
  }

  void onSelectedWT(bool value) {
    if (selectedWatt) {
      return;
    }
    _controller1.clear();
    selectedWatt = true;
    selectedMedia = false;
    selectedPerc = false;

    state = const TwoInputState.inputPageWT();

    _form.control('inputOne').setValidators(
      [
        Validators.required,
        FormValidators.numberSplit,
      ],
      autoValidate: true,
      emitEvent: true,
      updateParent: true,
    );

    if (!selectedTempo) {
      _controller2.clear();
      selectedTempo = true;

      _form.control('inputTwo').setValidators(
        [
          Validators.required,
          Validators.minLength(6),
          FormValidators.numberSplit,
        ],
        autoValidate: true,
        emitEvent: true,
        updateParent: true,
      );
      resetValueForm2();
    }

    resetValueForm1();
    print(state);
  }

  void onSelectedM(bool value) {
    print('c');
    if (selectedMedia) {
      return;
    }

    if (selectedTempo) {
      state = const TwoInputState.inputPageMT();
    } else {
      state = const TwoInputState.inputPageMP();
    }

    _controller1.clear();
    selectedWatt = false;
    selectedMedia = true;
    _form.control('inputOne').setValidators(
      [
        Validators.required,
        Validators.minLength(6),
        FormValidators.numberSplit,
      ],
      autoValidate: true,
      emitEvent: true,
      updateParent: true,
    );

    resetValueForm1();

    print(state);
  }

  void onSelectedMT(bool value) {
    if (selectedTempo || selectedWatt) {
      return;
    }

    _controller2.clear();

    selectedTempo = true;
    selectedPerc = false;
    state = const TwoInputState.inputPageMT();
    _form.control('inputTwo').setValidators(
      [
        Validators.required,
        Validators.minLength(6),
        FormValidators.numberSplit,
      ],
      autoValidate: true,
      emitEvent: true,
      updateParent: true,
    );

    resetValueForm2();
  }

  void onSelectedMP(bool value) {
    if (selectedPerc) {
      return;
    }

    _controller2.clear();

    selectedTempo = false;
    selectedPerc = true;
    state = const TwoInputState.inputPageMP();
    _form.control('inputTwo').setValidators(
      [
        Validators.required,
        Validators.maxLength(3),
        FormValidators.numberSplit,
      ],
      autoValidate: true,
      emitEvent: true,
      updateParent: true,
    );

    resetValueForm2();
  }

  void goInputPage() {
    _appRouter.navigateBack();
    if (selectedWatt) {
      state = const TwoInputState.inputPageWT();
    } else if (selectedMedia && selectedTempo) {
      state = const TwoInputState.inputPageMT();
    } else {
      state = const TwoInputState.inputPageMP();
    }
  }

  void goAndResetInputPage() {
    resetValueForm();
    goInputPage();
  }

  void calculateAndGotoResultPage() {
    state = const TwoInputState.calculateInProgress();
    _appRouter.pushNamed(NavigatorPath.resultTwoInputPage);
    TwoInputPagePlayer twoInputPagePlayer;
    if (selectedWatt) {
      twoInputPagePlayer = TwoInputPagePlayer1.fromWT(
        watt: _form.control('inputOne').value,
        time: _form.control('inputTwo').value,
      );
    } else if (selectedMedia && selectedTempo) {
      twoInputPagePlayer = TwoInputPagePlayer1.fromM500T(
        media: _form.control('inputOne').value,
        time: _form.control('inputTwo').value,
      );
    } else {
      twoInputPagePlayer = TwoInputPagePlayer2.fromM500P(
        media500: _form.control('inputOne').value,
        percentualeRichiesta: _form.control('inputTwo').value,
      );
    }

    state = TwoInputState.resultPage(player: twoInputPagePlayer);
  }
}
