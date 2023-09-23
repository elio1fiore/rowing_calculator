import 'package:flutter/material.dart';
import 'package:flutter_multi_formatter/formatters/masked_input_formatter.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:row_calculator/feature/two_input/application/two_input_notifier.dart';
import 'package:row_calculator/feature/two_input/shared/two_input_provider.dart';

class TwoInputViewV2 extends ConsumerStatefulWidget {
  const TwoInputViewV2({super.key});

  @override
  ConsumerState<TwoInputViewV2> createState() => _TwoInputViewV2State();
}

class _TwoInputViewV2State extends ConsumerState<TwoInputViewV2> {
  @override
  Widget build(BuildContext context) {
    final inputNotyWatch = ref.watch(twoInputNotifierProvider.notifier);
    final inputNotyRead = ref.read(twoInputNotifierProvider.notifier);
    final featureNotyRead = ref.read(twoFeatureNotifierProvider.notifier);
    double appBarHeight = Scaffold.of(context).appBarMaxHeight ?? 56.0;

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

    return SingleChildScrollView(
      child: ConstrainedBox(
        constraints: BoxConstraints(
          minHeight: MediaQuery.of(context).size.height - appBarHeight - 40,
        ),
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
                          child: ReactiveTextField<String>(
                            formControlName: 'inputOne',
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
                            controller: inputNotyWatch.controller1,
                            autofocus: false,
                            autocorrect: true,
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              inputNotyRead.selectedMedia
                                  ? MaskedInputFormatter('#:##:#')
                                  : MaskedInputFormatter('###########')
                            ],
                            decoration: InputDecoration(
                              suffixText:
                                  inputNotyRead.selectedMedia ? 'min' : 'W',
                              label: Text(
                                inputNotyRead.selectedMedia
                                    ? 'Media/500'
                                    : 'Watt',
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
                              selected: !inputNotyWatch.selectedMedia,
                              label: const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 16.0),
                                child: Text('Watt'),
                              ),
                              onSelected: inputNotyRead.onSelectedWT,
                            ),
                            const SizedBox(
                              width: 15.0,
                            ),
                            FilterChip(
                              selected: inputNotyWatch.selectedMedia,
                              label: const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 16.0),
                                child: Text('Media'),
                              ),
                              onSelected: inputNotyRead.onSelectedM,
                            ),
                          ],
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
                            formControlName: 'inputTwo',
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
                            controller: inputNotyWatch.controller2,
                            autofocus: false,
                            autocorrect: true,
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              inputNotyWatch.selectedPerc
                                  ? MaskedInputFormatter('###########')
                                  : MaskedInputFormatter('#:##:#')
                            ],
                            decoration: InputDecoration(
                              suffixText:
                                  inputNotyWatch.selectedPerc ? '%' : 'min',
                              label: Text(
                                inputNotyWatch.selectedPerc
                                    ? 'Percentuale'
                                    : 'Tempo',
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
                              selected: !inputNotyWatch.selectedPerc,
                              label: const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 16.0),
                                child: Text('Tempo'),
                              ),
                              onSelected: inputNotyRead.onSelectedMT,
                            ),
                            const SizedBox(
                              width: 15.0,
                            ),
                            Visibility(
                              visible: inputNotyWatch.selectedMedia,
                              child: FilterChip(
                                selected: inputNotyWatch.selectedPerc,
                                label: const Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 16.0),
                                  child: Text('Percentuale'),
                                ),
                                onSelected: !inputNotyWatch.selectedMedia
                                    ? null
                                    : inputNotyRead.onSelectedMP,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 0),
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

                            player.when(
                              typeA: (player) {
                                featureNotyRead.setStateResultOne(player);
                              },
                              typeB: (player) {
                                featureNotyRead.setStateResultTwo(player);
                              },
                            );
                          } else {
                            inputNotyRead.showError();
                          }
                        },
                        onLongPress: () => inputNotyRead.resetValueForm(),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
