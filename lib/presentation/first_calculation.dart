import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';

class FirstCalculationPage extends StatefulWidget {
  const FirstCalculationPage({super.key});

  @override
  State<FirstCalculationPage> createState() => _FirstCalculationPageState();
}

class _FirstCalculationPageState extends State<FirstCalculationPage> {
  List<String> listDropDownButton = <String>['m', 's'];

  late List<String> mutableList = listDropDownButton;

  late String dpvalue = listDropDownButton.first;
  late String labelInput2 = (dpvalue == 'm') ? "Split" : "Time";

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

  void _calculate() {
    print('hello');
  }

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
                        ReactiveTextField(
                          formControlName: 'input1',
                          keyboardType: TextInputType.number,
                          textInputAction: TextInputAction.next,
                          autocorrect: true,
                          autofocus: true,
                          validationMessages: (control) =>
                              {ValidationMessage.required: 'Required field'},
                          enableInteractiveSelection: false,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: "Distance",
                            suffixIcon: Padding(
                              padding: EdgeInsets.all(15.0),
                              child: Text(
                                'm',
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              flex: 5,
                              child: ReactiveTextField(
                                formControlName: 'input2',
                                keyboardType: TextInputType.number,
                                textInputAction: TextInputAction.next,
                                autofocus: true,
                                validationMessages: (control) => {
                                  ValidationMessage.required: 'Required field'
                                },
                                enableInteractiveSelection: false,
                                decoration: InputDecoration(
                                  border: const OutlineInputBorder(),
                                  labelText:
                                      (dpvalue == "m") ? "Split" : "Total time",
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Expanded(
                              flex: 1,
                              child: DropdownButtonFormField2(
                                buttonHeight: 20,
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                ),
                                isDense: true,
                                isExpanded: false,
                                iconSize: 15,
                                focusColor: Colors.transparent,
                                value: dpvalue,
                                itemPadding: const EdgeInsets.all(0),
                                items: mutableList
                                    .map<DropdownMenuItem<String>>(
                                        (String value) {
                                  return DropdownMenuItem<String>(
                                    enabled: true,
                                    value: value,
                                    child: Text(
                                      value,
                                    ),
                                  );
                                }).toList(),
                                onChanged: (String? value) {
                                  setState(() {
                                    if (value == "m") {
                                      labelInput2 = "Split";
                                    } else {
                                      labelInput2 = "Time";
                                    }
                                    dpvalue = value!;
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
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
                      onPressed: _form.valid ? _calculate : null,
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
