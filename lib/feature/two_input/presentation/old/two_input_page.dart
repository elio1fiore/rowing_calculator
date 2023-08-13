import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_multi_formatter/formatters/masked_input_formatter.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:row_calculator/feature/two_input/application/two_input_notifier.dart';
import 'package:row_calculator/feature/two_input/shared/two_input_provider.dart';

@RoutePage()
class TwoInputView extends ConsumerStatefulWidget {
  const TwoInputView({super.key});
//
  @override
  ConsumerState<TwoInputView> createState() => _TwoInputPageState();
}

class _TwoInputPageState extends ConsumerState<TwoInputView> {
  @override
  Widget build(BuildContext context) {
    final noty = ref.read(twoInputNotifierProvider.notifier);
    final form = noty.form;
    final isMedia = noty.selectedMedia;
    final isPerc = noty.selectedPerc;

    ref.listen<TwoInputState>(
      twoInputNotifierProvider,
      (_, state) {
        state.maybeWhen(
          orElse: () {
            setState(() {});
          },
        );
      },
    );

    Map<String, String> validationMessages1(FormControl<String> x) {
      final String valueMin = (x.value == null) ? '' : x.value!;

      if (noty.selectedWatt) {
        return {
          ValidationMessage.required: 'Campo richiesto',
          ValidationMessage.number: 'Inserire solo i numeri',
        };
      }
      if (noty.selectedMedia && valueMin.length < 3) {
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

    Map<String, String> validationMessages2(FormControl<String> x) {
      final String valueMin = (x.value == null) ? '' : x.value!;

      if (noty.selectedPerc) {
        return {
          ValidationMessage.required: 'Campo richiesto',
          ValidationMessage.number: 'Inserire solo i numeri',
        };
      }
      if (noty.selectedMedia && valueMin.length < 3) {
        return {
          ValidationMessage.required: 'Campo richiesto',
          ValidationMessage.number: 'Inserire solo i numeri',
          ValidationMessage.minLength: 'Inserire i secondi e i decimi',
        };
      } else {
        return {
          ValidationMessage.required: 'Campo richiesto',
          ValidationMessage.number: 'Inserire solo i numeri',
          ValidationMessage.minLength: 'Inserire i decimi',
        };
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Page Two Input'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
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
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Container(
                            constraints: const BoxConstraints(minHeight: 80),
                            child: ReactiveTextField<String>(
                              expands: false,
                              // validationMessages: validationMessages1,
                              controller: noty.controller1,
                              autofocus: true,
                              autocorrect: true,
                              formControlName: 'inputOne',
                              keyboardType: TextInputType.number,
                              inputFormatters: [
                                noty.selectedMedia
                                    ? MaskedInputFormatter('#:##:#')
                                    : MaskedInputFormatter('###########')
                              ],
                              style: const TextStyle(
                                backgroundColor: Colors.transparent,
                                color: Colors.black,
                              ),
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.all(20.0),
                                suffixText: noty.selectedMedia ? 'min' : 'W',
                                label: Text(
                                  noty.selectedMedia ? 'Media/500' : 'Watt',
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
                                    selected: !isMedia,
                                    label: const Text(
                                      'Watt',
                                      style: TextStyle(),
                                    ),
                                    onSelected: noty.onSelectedWT,
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
                                    selected: isMedia,
                                    label: const Text(
                                      'Media',
                                      style: TextStyle(),
                                    ),
                                    onSelected: noty.onSelectedM,
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
                          const SizedBox(height: 25),
                          Container(
                            constraints: const BoxConstraints(minHeight: 80),
                            child: ReactiveTextField<String>(
                              // validationMessages: validationMessages2,
                              controller: noty.controller2,
                              autofocus: false,
                              autocorrect: true,
                              formControlName: 'inputTwo',
                              keyboardType: TextInputType.number,
                              inputFormatters: [
                                noty.selectedPerc
                                    ? MaskedInputFormatter('###')
                                    : MaskedInputFormatter('##:##:#')
                              ],
                              style: const TextStyle(
                                backgroundColor: Colors.transparent,
                                color: Colors.black,
                              ),
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.all(20.0),
                                suffixText: noty.selectedPerc ? '%' : 'min',
                                label: Text(
                                  noty.selectedPerc ? 'Percentuale' : 'Tempo',
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
                                    selected: !isPerc,
                                    autofocus: false,
                                    label: const Text(
                                      'Tempo',
                                      style: TextStyle(),
                                    ),
                                    onSelected: noty.onSelectedMT,
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
                                  const SizedBox(width: 15),
                                  Visibility(
                                    visible: isMedia,
                                    child: FilterChip(
                                      selected: isPerc,
                                      autofocus: false,
                                      label: const Text(
                                        'Percentuale',
                                        style: TextStyle(),
                                      ),
                                      onSelected:
                                          !isMedia ? null : noty.onSelectedMP,
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
                                  ),
                                ],
                              ),
                            ),
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
                        onLongPress: () => noty.resetValueForm(),
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
