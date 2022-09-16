import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:row_calculator/data/list_drop_dawn_item.dart';
import 'package:row_calculator/domain/drop_dawn_items.dart';
import 'package:row_calculator/domain/player_dawn_button.dart';
import 'package:row_calculator/domain/type_input.dart';

class SecondCalculationPage extends StatefulWidget {
  const SecondCalculationPage({super.key});

  @override
  State<SecondCalculationPage> createState() => _SecondCalculationPageState();
}

class _SecondCalculationPageState extends State<SecondCalculationPage> {
  final PlayerDawnButton player =
      PlayerDawnButton(listDropDawnItems: listDropDawnItem);

  void printProva() {
    print(player.firstLabel);
    print(player.firstValue.signature);
  }

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
                        //First row
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
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
                                value: player.firstValue.signature.name,
                                itemPadding: const EdgeInsets.all(0),
                                items: player.listSignature
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
                                    player.onChangeFirst(value!);
                                  });
                                },
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Expanded(
                              flex: 5,
                              child: ReactiveTextField(
                                formControlName: 'input1',
                                keyboardType: TextInputType.number,
                                textInputAction: TextInputAction.next,
                                autofocus: true,
                                validationMessages: (control) => {
                                  ValidationMessage.required: 'Required field'
                                },
                                enableInteractiveSelection: false,
                                decoration: InputDecoration(
                                  border: const OutlineInputBorder(),
                                  labelText: player.firstLabel,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        //Second row
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
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
                                value: player.firstValue.signature.name,
                                itemPadding: const EdgeInsets.all(0),
                                items: player.listSignature
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
                                    player.onChangeFirst(value!);
                                  });
                                },
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
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
                                  labelText: player.secondLabel,
                                ),
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
                //Button
                ReactiveFormConsumer(
                  child: const Text('Calculate'),
                  builder: (context, formGroup, child) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: printProva,
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
