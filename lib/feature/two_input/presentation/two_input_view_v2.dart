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
                padding: EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    //FIRST
                    ConstrainedBox(
                      constraints: const BoxConstraints(
                        minHeight: 90,
                      ),
                      child: ReactiveTextField<String>(
                        formControlName: 'inputOne',
                        validationMessages: {},
                        controller: inputNotyWatch.controller1,
                        autofocus: false,
                        autocorrect: true,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          // inputNotyWatch.selectedMinute
                          //     ? MaskedInputFormatter('#:##:#')
                          //     : MaskedInputFormatter('###########')
                        ],
                        decoration: InputDecoration(
                            // suffixText:
                            //     inputNotyWatch.selectedMinute ? 'min' : 'W',
                            // label: Text(
                            //   inputNotyWatch.selectedMinute
                            //       ? 'Media/500'
                            //       : 'Watt',
                            //   maxLines: 1,
                            //   overflow: TextOverflow.ellipsis,
                            // ),
                            ),
                      ),
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    Row(
                      children: [
                        FilterChip(
                          label: const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16.0),
                            child: Text('Watt'),
                          ),
                          onSelected: (value) {},
                        ),
                        const SizedBox(
                          width: 15.0,
                        ),
                        FilterChip(
                          label: const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16.0),
                            child: Text('Watt'),
                          ),
                          onSelected: (value) {},
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
                        validationMessages: {},
                        controller: inputNotyWatch.controller1,
                        autofocus: false,
                        autocorrect: true,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          inputNotyWatch.selectedMedia
                              ? MaskedInputFormatter('#:##:#')
                              : MaskedInputFormatter('###########')
                        ],
                        decoration: InputDecoration(
                          suffixText:
                              inputNotyWatch.selectedMedia ? 'min' : 'W',
                          label: Text(
                            inputNotyWatch.selectedMedia ? 'Media/500' : 'Watt',
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
                    )
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
                    onPressed: () {},
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
