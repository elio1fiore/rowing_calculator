import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_multi_formatter/formatters/masked_input_formatter.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:row_calculator/feature/one_input/application/one_input_notifier.dart';
import 'package:row_calculator/feature/one_input/shared/one_input_provider.dart';

class OneInputViewV2 extends ConsumerStatefulWidget {
  const OneInputViewV2({super.key});

  @override
  ConsumerState<OneInputViewV2> createState() => _OneInputViewV2State();
}

class _OneInputViewV2State extends ConsumerState<OneInputViewV2> {
  @override
  Widget build(BuildContext context) {
    final featureNotyRead = ref.read(oneFeatureNotifierProvider.notifier);
    final inputNotyWatch = ref.watch(oneInputNotifierProvider.notifier);
    final inputNotyRead = ref.read(oneInputNotifierProvider.notifier);
    final isMinute = inputNotyRead.selectedMinute;

    ref.listen<OneInputState>(
      oneInputNotifierProvider,
      (_, state) {
        state.maybeWhen(
          orElse: () {
            setState(() {});
          },
        );
      },
    );

    return ReactiveForm(
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
                    ConstrainedBox(
                      constraints: const BoxConstraints(
                        minHeight: 90,
                      ),
                      child: ReactiveTextField<String>(
                        validationMessages: {
                          ValidationMessage.required: (error) =>
                              'Inserire il valore per effettuare il calcolo',
                          'number': (error) => 'Inserire i numeri',
                          ValidationMessage.minLength: (error) =>
                              'Inserire un valore più preciso',
                        },
                        controller: inputNotyWatch.controller,
                        autofocus: false,
                        autocorrect: true,
                        formControlName: 'inputOne',
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          suffixText:
                              inputNotyWatch.selectedMinute ? 'min' : 'W',
                          label: Text(
                            inputNotyWatch.selectedMinute
                                ? 'Media/500'
                                : 'Watt',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        inputFormatters: [
                          inputNotyWatch.selectedMinute
                              ? MaskedInputFormatter('#:##:#')
                              : MaskedInputFormatter('###########')
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    Row(
                      children: [
                        FilterChip(
                          selected: !isMinute,
                          label: const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16.0),
                            child: Text('Watt'),
                          ),
                          onSelected: inputNotyRead.onSelectedWattState,
                        ),
                        const SizedBox(
                          width: 15.0,
                        ),
                        FilterChip(
                          selected: isMinute,
                          label: const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16.0),
                            child: Text('Minute'),
                          ),
                          onSelected: inputNotyRead.onSelectedMinuteState,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
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
                      final player = inputNotyRead.calculate();
                      featureNotyRead.setStateResult(player);
                    },
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
