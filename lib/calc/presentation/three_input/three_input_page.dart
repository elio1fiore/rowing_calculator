import 'package:flutter/material.dart';
import 'package:flutter_multi_formatter/flutter_multi_formatter.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:row_calculator/calc/application/three_input_notifier.dart';
import 'package:row_calculator/calc/provider/three_input/three_input_provider.dart';
import 'package:row_calculator/data/boat.dart';

class ThreeInputPage extends ConsumerStatefulWidget {
  const ThreeInputPage({super.key});

  @override
  ConsumerState<ThreeInputPage> createState() => _ThreeInputPageState();
}

class _ThreeInputPageState extends ConsumerState<ThreeInputPage> {
  @override
  Widget build(BuildContext context) {
    final noty = ref.read(threeInputNotifierProvider.notifier);
    final form = noty.form;
    final isTime = noty.selectedTime;

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

    Map<String, String> validationMessages2(FormControl<String> x) => {
          ValidationMessage.required: 'Campo richiesto',
          ValidationMessage.number: 'Inserire solo i numeri',
        };

    Map<String, String> validationMessages3(FormControl<String> x) {
      final String valueMin = (x.value == null) ? '' : x.value!;

      if (noty.selectedEnergyExp) {
        return {
          ValidationMessage.required: 'Campo richiesto',
          ValidationMessage.number: 'Inserire solo i numeri',
        };
      }
      if (noty.selectedTime && valueMin.length < 3) {
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

    return Scaffold(
      appBar: AppBar(
        title: const Text('Page Three Input'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
          child: ReactiveForm(
            formGroup: form,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Card(
                    elevation: 10,
                    child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 8),
                        child: Column(
                          children: [
                            Container(
                              constraints: const BoxConstraints(minHeight: 80),
                              child: ReactiveDropdownField<String>(
                                focusColor: Colors.transparent,
                                menuMaxHeight: 350,
                                borderRadius: BorderRadius.circular(15),
                                isExpanded: true,
                                readOnly: false,
                                formControlName: 'inputOne',
                                items: listBoat.map(
                                  (boat) {
                                    return DropdownMenuItem(
                                      alignment: AlignmentDirectional.center,
                                      key: ValueKey(boat.getHash),
                                      value: boat.boatBest,
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
                                decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.all(20),
                                  label: const Text(
                                    'Barca',
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
                                    gapPadding: 20,
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide: const BorderSide(width: 20),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                            Container(
                              constraints: const BoxConstraints(minHeight: 80),
                              child: ReactiveTextField<String>(
                                expands: false,
                                validationMessages: validationMessages2,
                                controller: noty.controller2,
                                autofocus: true,
                                autocorrect: true,
                                formControlName: 'inputTwo',
                                keyboardType: TextInputType.number,
                                inputFormatters: [
                                  MaskedInputFormatter('#########')
                                ],
                                style: const TextStyle(
                                  backgroundColor: Colors.transparent,
                                  color: Colors.black,
                                ),
                                decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.all(20.0),
                                  suffixText: 'm',
                                  label: const Text(
                                    'Metri',
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
                            const SizedBox(height: 10),
                            Container(
                              constraints: const BoxConstraints(minHeight: 80),
                              child: ReactiveTextField<String>(
                                expands: false,
                                validationMessages: validationMessages3,
                                controller: noty.controller3,
                                autofocus: true,
                                autocorrect: true,
                                formControlName: 'inputThree',
                                keyboardType: TextInputType.number,
                                inputFormatters: [
                                  isTime
                                      ? MaskedInputFormatter('##:##:#')
                                      : MaskedInputFormatter('###########')
                                ],
                                style: const TextStyle(
                                  backgroundColor: Colors.transparent,
                                  color: Colors.black,
                                ),
                                decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.all(20.0),
                                  suffixText: isTime ? 'min' : '%',
                                  label: Text(
                                    isTime ? 'Time' : 'Dispendio',
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
                            const SizedBox(height: 5),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [
                                    FilterChip(
                                      autofocus: false,
                                      selected: isTime,
                                      label: const Text(
                                        'Time',
                                        style: TextStyle(),
                                      ),
                                      onSelected: noty.onSelectedTimeState,
                                      elevation: 2,
                                      backgroundColor: Colors.white,
                                      checkmarkColor: Colors.blue.shade700,
                                      disabledColor: Colors.blueGrey.shade600,
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
                                    const SizedBox(width: 15),
                                    FilterChip(
                                      autofocus: false,
                                      selected: !isTime,
                                      label: const Text(
                                        'Dispendio',
                                        style: TextStyle(),
                                      ),
                                      onSelected: noty.onSelectedEnergyExpState,
                                      elevation: 2,
                                      backgroundColor: Colors.white,
                                      checkmarkColor: Colors.blue.shade700,
                                      disabledColor: Colors.blueGrey.shade600,
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
                          ],
                        )),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  ReactiveFormConsumer(
                    builder: (context, formGroup, child) => Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: ElevatedButton(
                        onLongPress: () => noty.resetTotalForm(),
                        style: const ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.green),
                        ),
                        onPressed: noty.formIsValid()
                            ? noty.calculateAndGotoResultPage
                            : noty.showError,
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
      ),
    );
  }
}
