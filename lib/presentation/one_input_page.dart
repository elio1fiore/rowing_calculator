import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_multi_formatter/formatters/masked_input_formatter.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:row_calculator/router/app_router.dart';
import 'package:row_calculator/shared/router_provider.dart';
import 'package:row_calculator/util/form_validators.dart';
import 'package:rxdart/rxdart.dart';

class OneInputPage extends ConsumerStatefulWidget {
  const OneInputPage({super.key});

  @override
  ConsumerState<OneInputPage> createState() => _OneInputPageState();
}

class _OneInputPageState extends ConsumerState<OneInputPage> {
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

  final _controller = TextEditingController();

  Map<String, String> _validationMessages(FormControl<String> x) {
    final String valueMin = (x.value == null) ? '' : x.value!;

    if (_selectedWatt) {
      return {
        ValidationMessage.required: 'Campo richiesto',
        ValidationMessage.minLength: 'Mancano minuti o secondi o decimi',
        ValidationMessage.number: 'Inserire solo i numeri',
      };
    }

    if (_selectedMinute && valueMin.length < 2) {
      return {
        ValidationMessage.required: 'Campo richiesto',
        ValidationMessage.minLength: 'Inserire i minuti, secondi e decimi',
        ValidationMessage.number: 'Inserire solo i numeri',
      };
    } else if (_selectedMinute && valueMin.length < 5) {
      return {
        ValidationMessage.required: 'Campo richiesto',
        ValidationMessage.minLength: 'Inserire i secondi e i decimi',
        ValidationMessage.number: 'Inserire solo i numeri',
      };
    } else {
      return {
        ValidationMessage.required: 'Campo richiesto',
        ValidationMessage.minLength: 'Inserire i decimi',
        ValidationMessage.number: 'Inserire solo i numeri',
      };
    }
  }

  bool _selectedMinute = true;
  bool _selectedWatt = false;

  void _onSelectedMinuteState(bool value) {
    setState(() {
      _controller.clear();

      _selectedWatt = false;
      _selectedMinute = true;
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

      _form.control('inputOne').reset(
            value: null,
          );
    });
  }

  void _onSelectedWattState(bool value) {
    setState(() {
      _controller.clear();

      _selectedWatt = true;
      _selectedMinute = false;
      _form.control('inputOne').setValidators(
        [
          Validators.required,
          FormValidators.numberSplit,
        ],
        autoValidate: true,
        emitEvent: true,
        updateParent: true,
      );

      _form.control('inputOne').reset(
            value: null,
          );
    });
  }

  @override
  Widget build(BuildContext context) {
    final appRouter = ref.watch(appRouterProvider);

    void _calculateFunction() {
      appRouter.pushNamed(NavigatorPath.resultOneInputPage);
    }

    return Scaffold(
        appBar: AppBar(
          title: const Text('Page One Input'),
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ReactiveForm(
              formGroup: _form,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Card(
                      // shape: OutlineInputBorder(
                      //   borderRadius: BorderRadius.circular(10),
                      //   borderSide: BorderSide(
                      //     color: Colors.blue.shade700,
                      //     width: 1.5,
                      //   ),
                      // ),
                      elevation: 10,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            Container(
                              constraints: const BoxConstraints(minHeight: 120),
                              child: ReactiveTextField<String>(
                                validationMessages: _validationMessages,
                                controller: _controller,
                                autofocus: false,
                                autocorrect: true,
                                formControlName: 'inputOne',
                                keyboardType: TextInputType.number,
                                inputFormatters: [
                                  _selectedMinute
                                      ? MaskedInputFormatter('##:##:###')
                                      : MaskedInputFormatter('###########')
                                ],
                                style: const TextStyle(
                                  backgroundColor: Colors.transparent,
                                  color: Colors.black,
                                ),
                                decoration: InputDecoration(
                                  // alignLabelWithHint: true,
                                  contentPadding: const EdgeInsets.all(30.0),

                                  suffixText: _selectedMinute ? 'min' : 'W',
                                  label: Text(
                                    _selectedMinute ? 'Media/500' : 'Watt',
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  labelStyle: const TextStyle(
                                    backgroundColor: Colors.transparent,
                                    // background:
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black,
                                  ),
                                  suffixStyle: const TextStyle(
                                    backgroundColor: Colors.transparent,
                                    // background:
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide: const BorderSide(),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    FilterChip(
                                      autofocus: false,
                                      selected: _selectedWatt,
                                      label: const Text(
                                        'Watt',
                                        style: TextStyle(),
                                      ),
                                      onSelected: _onSelectedWattState,
                                      elevation: 2,
                                      backgroundColor: Colors.white,
                                      checkmarkColor: Colors.blue.shade700,
                                      disabledColor: Colors.blue.shade500,
                                      selectedShadowColor: Colors.black,
                                      labelPadding: const EdgeInsets.symmetric(
                                        horizontal: 10,
                                        vertical: 2,
                                      ),
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 20,
                                      ),
                                      selectedColor: Colors.blue.shade100,
                                      visualDensity: VisualDensity.comfortable,
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                          color: Colors.blue.shade700,
                                          width: 1,
                                        ),
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 15,
                                    ),
                                    FilterChip(
                                      autofocus: false,
                                      selected: _selectedMinute,
                                      label: const Text(
                                        'Minute',
                                        style: TextStyle(),
                                      ),
                                      onSelected: _onSelectedMinuteState,
                                      elevation: 2,
                                      backgroundColor: Colors.white,
                                      checkmarkColor: Colors.blue.shade700,
                                      disabledColor: Colors.grey.shade500,
                                      selectedShadowColor: Colors.black,
                                      labelPadding: const EdgeInsets.symmetric(
                                        horizontal: 10,
                                        vertical: 2,
                                      ),
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 20,
                                      ),
                                      selectedColor: Colors.blue.shade100,
                                      visualDensity: VisualDensity.comfortable,
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                          color: Colors.blue.shade700,
                                          width: 1,
                                        ),
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    ReactiveFormConsumer(
                      builder: (context, formGroup, child) => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: ElevatedButton(
                          onLongPress: () => _form.reset(value: null),
                          style: const ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(Colors.green)),
                          onPressed: _form.valid ? _calculateFunction : null,
                          child: child,
                        ),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.symmetric(vertical: 20),
                        child: Text(
                          'Calcola',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
