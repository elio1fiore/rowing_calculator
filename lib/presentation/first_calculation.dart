import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:row_calculator/domain/measures.dart';
import 'package:row_calculator/domain/type_signature.dart';
import 'package:row_calculator/domain/type_unit_of_measure.dart';
import 'package:row_calculator/presentation/input_row.dart';

class FirstCalculationPage extends StatefulWidget {
  const FirstCalculationPage({super.key});

  @override
  State<FirstCalculationPage> createState() => _FirstCalculationPageState();
}

class _FirstCalculationPageState extends State<FirstCalculationPage> {
  List<Measures> secondListMeasures = [
    Measures(
      name: 'Split',
      typeUnitOfMeasure: TypeUnitOfMeasure.m,
      nickname: TypeSignature.split,
    ),
    Measures(
      name: 'Total Time',
      typeUnitOfMeasure: TypeUnitOfMeasure.s,
      nickname: TypeSignature.time,
    ),
  ];

  late List<String> firstListMeasuresName = firstListMeasures
      .map(
        (e) => e.nickname.name,
      )
      .toList();

  late List<String> secondListMeasuresName = secondListMeasures
      .map(
        (e) => e.nickname.name,
      )
      .toList();

  final _form = FormGroup(
    {
      'input1': FormControl<double>(
        validators: [Validators.required],
      ),
      'input2': FormControl<double>(
        validators: [Validators.required],
      ),
    },
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Prova"),
      ),
      body: Align(
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
          child: ReactiveForm(
            formGroup: _form,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Card(
                  color: Colors.blue.shade50,
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        InputRow(dpvalue: dpvalue, mutableList: mutableList),
                        const SizedBox(
                          height: 20,
                        ),
                        InputRow(dpvalue: dpvalue, mutableList: mutableList),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ReactiveFormConsumer(
                  child: const Text('Calculate'),
                  builder: (context, formGroup, child) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: (() => _form.valid ? print('valid') : null),
                      onLongPress: () => print('long'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green.shade700,
                      ),
                      child: child,
                    ),
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
