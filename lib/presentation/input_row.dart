import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';

class InputRow extends StatelessWidget {
  const InputRow({
    Key? key,
    required this.dpvalue,
    required this.mutableList,
  }) : super(key: key);

  final String dpvalue;
  final List<String> mutableList;

  @override
  Widget build(BuildContext context) {
    return Row(
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
            value: dpvalue,
            itemPadding: const EdgeInsets.all(0),
            items: mutableList.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                enabled: true,
                value: value,
                child: Text(
                  value,
                ),
              );
            }).toList(),
            onChanged: (String? value) {
              // setState(() {
              //   if (value == "m") {
              //     labelInput2 = "Split";
              //   } else {
              //     labelInput2 = "Time";
              //   }
              //   dpvalue = value!;
              // });
            },
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        Expanded(
          flex: 5,
          child: ReactiveTextField(
            inputFormatters: [],
            formControlName: 'input2',
            keyboardType: TextInputType.streetAddress,
            textInputAction: TextInputAction.next,
            autofocus: true,
            validationMessages: (control) =>
                {ValidationMessage.required: 'Required field'},
            enableInteractiveSelection: false,
            decoration: InputDecoration(
              border: const OutlineInputBorder(),
              labelText: (dpvalue == "m") ? "Split" : "Total time",
            ),
          ),
        ),
      ],
    );
  }
}
