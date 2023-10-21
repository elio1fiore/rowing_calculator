import 'package:flutter/material.dart';
import 'package:flutter_multi_formatter/formatters/masked_input_formatter.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:row_calculator/data/local_boat.dart';
import 'package:row_calculator/feature/three_input/application/three_input_notifier.dart';
import 'package:row_calculator/feature/three_input/shared/three_input_provider.dart';

class ThreeInputViewV2 extends ConsumerStatefulWidget {
  const ThreeInputViewV2({super.key});

  @override
  ConsumerState<ThreeInputViewV2> createState() => _ThreeFeatureViewV2State();
}

class _ThreeFeatureViewV2State extends ConsumerState<ThreeInputViewV2> {
  @override
  Widget build(BuildContext context) {
    final inputNotyWatch = ref.watch(threeInputNotifierProvider.notifier);
    final inputNotyRead = ref.read(threeInputNotifierProvider.notifier);
    final featureNotyRead = ref.read(threeFeatureNotifierProvider.notifier);
    double appBarHeight = Scaffold.of(context).appBarMaxHeight ?? 56.0;

    final isTime = inputNotyWatch.selectedTime;

    ref.listen<ThreeInputState>(
      threeInputNotifierProvider,
      (_, state) {
        state.maybeWhen(
          orElse: () {
            setState(() {});
          },
        );
      },
    );

    return SingleChildScrollView(
      child: ReactiveForm(
        formGroup: inputNotyWatch.form,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      //FIRST
                      ConstrainedBox(
                        constraints: const BoxConstraints(
                          minHeight: 90,
                        ),
                        child: ReactiveDropdownField<String>(
                          validationMessages: {
                            ValidationMessage.required: (error) =>
                                'Inserire il valore per effettuare il calcolo',
                          },
                          onChanged: (control) {
                            if (control.value != null) {
                              final boat = localBoat.firstWhere(
                                (element) => element.name == control.value,
                              );

                              inputNotyRead.setBoat(boat);
                            }
                          },
                          focusColor: Colors.transparent,
                          menuMaxHeight: 350,
                          borderRadius: BorderRadius.circular(15),
                          isExpanded: true,
                          readOnly: false,
                          formControlName: 'inputOne',
                          items: localBoat.map(
                            (boat) {
                              return DropdownMenuItem(
                                alignment: AlignmentDirectional.center,
                                key: ValueKey(boat.getHash),
                                value: boat.name,
                                child: Row(
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: boat.color,
                                        ),
                                        height: 25,
                                        child: const Text(''),
                                      ),
                                    ),
                                    const Spacer(
                                      flex: 1,
                                    ),
                                    Expanded(
                                      flex: 3,
                                      child: Text(
                                        boat.name,
                                        softWrap: false,
                                        style: const TextStyle(
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ).toList(),
                          style: const TextStyle(
                            backgroundColor: Colors.transparent,
                            color: Colors.black,
                          ),
                          decoration: const InputDecoration(
                            contentPadding: EdgeInsets.all(20),
                            label: Text(
                              'Barca',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      //SECOND
                      ConstrainedBox(
                        constraints: const BoxConstraints(
                          minHeight: 90,
                        ),
                        child: ReactiveTextField<String>(
                          validationMessages: {
                            ValidationMessage.required: (error) =>
                                'Inserire il valore per effettuare il calcolo',
                            'number': (error) => 'Inserire i numeri',
                          },
                          controller: inputNotyWatch.controller2,
                          formControlName: 'inputTwo',
                          inputFormatters: [
                            MaskedInputFormatter('#########'),
                          ],
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                            contentPadding: EdgeInsets.all(20.0),
                            suffixText: 'm',
                            label: Text(
                              'Metri',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      //THREE
                      ConstrainedBox(
                        constraints: const BoxConstraints(
                          minHeight: 90,
                        ),
                        child: ReactiveTextField<String>(
                          validationMessages: {
                            ValidationMessage.required: (error) =>
                                'Inserire il valore per effettuare il calcolo',
                            'number': (error) => 'Inserire i numeri',
                            ValidationMessage.minLength: (error) {
                              final length = (error as Map)['actualLength'];

                              if (length >= 1 && length < 4) {
                                return 'Inserire i secondi e decimi';
                              } else if (length == 4) {
                                return 'Inserire i decimi';
                              }
                              return 'Inserire un valore più preciso';
                            },
                          },
                          controller: inputNotyWatch.controller3,
                          formControlName: 'inputThree',
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            isTime
                                ? MaskedInputFormatter('##:##:#')
                                : MaskedInputFormatter('###########')
                          ],
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.all(20.0),
                            suffixText: isTime ? 'min' : '%',
                            label: Text(
                              isTime ? 'Time' : 'Dispendio',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 8.0,
                      ),
                      Row(
                        children: [
                          FilterChip(
                            autofocus: false,
                            selected: isTime,
                            label: const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 16.0),
                              child: Text('Time'),
                            ),
                            onSelected: inputNotyRead.onSelectedTimeState,
                          ),
                          const SizedBox(
                            width: 15.0,
                          ),
                          FilterChip(
                            autofocus: false,
                            selected: !isTime,
                            label: const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 16.0),
                              child: Text('Dispendio'),
                            ),
                            onSelected: inputNotyRead.onSelectedEnergyExpState,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      child: const Padding(
                        padding: EdgeInsets.symmetric(vertical: 15),
                        child: Text("Calcola"),
                      ),
                      onPressed: () {
                        if (inputNotyRead.formIsValid()) {
                          final player = inputNotyRead.calculate();
                          featureNotyRead.setStateResult(player);
                        } else {
                          inputNotyRead.showError();
                        }
                      },
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
