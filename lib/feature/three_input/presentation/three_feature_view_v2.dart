import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reactive_forms/reactive_forms.dart';
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
                        formControlName: 'inputOne',
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
                    //THREE
                    ConstrainedBox(
                      constraints: const BoxConstraints(
                        minHeight: 90,
                      ),
                      child: ReactiveTextField<String>(
                        formControlName: 'inputOne',
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
