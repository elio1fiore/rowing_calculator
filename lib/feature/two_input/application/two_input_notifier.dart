import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:row_calculator/feature/two_input/domain/two_input_page_player_1.dart';
import 'package:row_calculator/feature/two_input/domain/two_input_page_player_2.dart';
import 'package:row_calculator/feature/two_input/domain/union_player_two.dart';

import 'package:row_calculator/util/form_validators.dart';
part 'two_input_notifier.freezed.dart';

final List<Validator<dynamic>> validatorsWatt = [
  Validators.required,
  Validators.number,
];
final List<Validator<dynamic>> validatorsMediaTime = [
  Validators.required,
  Validators.minLength(6),
  const NumberSplitValidator(),
];

final List<Validator<dynamic>> validatorsPercentuale = [
  Validators.required,
  Validators.maxLength(3),
];

@freezed
class TwoInputState with _$TwoInputState {
  const factory TwoInputState.inputPageWT() = InputPageWT;
  const factory TwoInputState.inputPageMT() = InputPageMT;
  const factory TwoInputState.inputPageMP() = InputPageMP;
}

class TwoInputNotifier extends StateNotifier<TwoInputState> {
  final _controller1 = TextEditingController();
  final _controller2 = TextEditingController();

  bool selectedWatt = true;
  bool selectedMedia = false;
  bool selectedTempo = true;
  bool selectedPerc = false;

  TextEditingController get controller1 => _controller1;
  TextEditingController get controller2 => _controller2;

  FormGroup get form => _form;

  final _form = FormGroup(
    {
      'inputOne': FormControl<String>(
        validators: validatorsWatt,
      ),
      'inputTwo': FormControl<String>(
        validators: validatorsMediaTime,
      ),
    },
  );

  TwoInputNotifier() : super(const TwoInputState.inputPageWT());

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
          validatorsWatt,
          autoValidate: true,
          emitEvent: true,
          updateParent: true,
        );

    if (!selectedTempo) {
      _controller2.clear();
      selectedTempo = true;

      _form.control('inputTwo').setValidators(
            validatorsMediaTime,
            autoValidate: true,
            emitEvent: true,
            updateParent: true,
          );
      resetValueForm2();
    }

    resetValueForm1();
  }

  void onSelectedM(bool value) {
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
          validatorsMediaTime,
          autoValidate: true,
          emitEvent: true,
          updateParent: true,
        );

    resetValueForm1();
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
          validatorsMediaTime,
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
          validatorsPercentuale,
          autoValidate: true,
          emitEvent: true,
          updateParent: true,
        );

    resetValueForm2();
  }

  UnionPlayerTwo calculate() {
    return state.when(
      // WATT
      inputPageWT: () {
        final player = TwoInputPagePlayer1.fromWT(
          watt: _form.control('inputOne').value,
          time: _form.control('inputTwo').value,
        );
        return UnionPlayerTwo.typeA(player);
      },
      //MEDIA TEMPO
      inputPageMT: () {
        final player = TwoInputPagePlayer1.fromM500T(
          media: _form.control('inputOne').value,
          time: _form.control('inputTwo').value,
        );
        return UnionPlayerTwo.typeA(player);
      },
      //
      inputPageMP: () {
        final player = TwoInputPagePlayer2.fromM500P(
          media500: _form.control('inputOne').value,
          percentualeRichiesta: _form.control('inputTwo').value,
        );
        return UnionPlayerTwo.typeB(player);
      },
    );
  }
}
