import 'package:flutter/material.dart';
import 'package:flutter_multi_formatter/formatters/masked_input_formatter.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:row_calculator/feature/one_input/shared/one_input_provider.dart';

class OneInputView extends ConsumerStatefulWidget {
  const OneInputView({
    super.key,
  });

  @override
  ConsumerState<OneInputView> createState() => _OneInputViewState();
}

class _OneInputViewState extends ConsumerState<OneInputView> {
  @override
  Widget build(BuildContext context) {
    final noty = ref.read(oneInputNotifierProvider.notifier);
    final form = noty.form;
    final isMinute = noty.selectedMinute;
    return Padding(
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
                          // validationMessages: validationMessages,
                          controller: noty.controller,
                          autofocus: false,
                          autocorrect: true,
                          formControlName: 'inputOne',
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            noty.selectedMinute
                                ? MaskedInputFormatter('#:##:#')
                                : MaskedInputFormatter('###########')
                          ],
                          style: const TextStyle(
                            backgroundColor: Colors.transparent,
                            color: Colors.black,
                          ),
                          decoration: InputDecoration(
                            // alignLabelWithHint: true,
                            contentPadding: const EdgeInsets.all(20.0),

                            suffixText: noty.selectedMinute ? 'min' : 'W',
                            label: Text(
                              noty.selectedMinute ? 'Media/500' : 'Watt',
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
                                selected: !isMinute,
                                label: const Text(
                                  'Watt',
                                  style: TextStyle(),
                                ),
                                onSelected: noty.onSelectedWattState,
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
                                selected: isMinute,
                                label: const Text(
                                  'Minute',
                                  style: TextStyle(),
                                ),
                                onSelected: noty.onSelectedMinuteState,
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
                            MaterialStatePropertyAll(Colors.green)),
                    // onPressed: noty.formIsValid()
                    //     ? noty.calculateAndGotoResultPage
                    //     : noty.showError,
                    onPressed: () {
                      if (noty.formIsValid()) {
                        setState(() {
                          noty.calculateAndGotoResultPage();
                        });
                      } else {
                        noty.showError();
                      }
                    },
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
    );
  }
}