import 'package:reactive_forms/reactive_forms.dart';
import 'package:row_calculator/util/function_util.dart';

abstract class FormValidators {
  static Map<String, dynamic>? numberSplit(AbstractControl<dynamic> control) {
    final Map<String, bool> errors = {};

    final value = control.value as String? ?? '';
    final v_sp = value.split(':');

    for (var i = 0; i < v_sp.length; i++) {
      if (isNumeric(v_sp[i])) {
        continue;
      } else {
        final errorType = {'number': true};
        if (errors.isEmpty) {
          errors.addEntries(errorType.entries);
        }
      }
    }

    return errors.isEmpty ? null : errors;
  }
}
