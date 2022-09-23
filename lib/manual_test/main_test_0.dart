import 'package:row_calculator/util/function_util.dart';

void main(List<String> args) {
  final prova = '93:38:';

  final provaSplit = prova.split(':');

  // print(provaSplit);

  if (isNumeric(provaSplit[0]) &&
      isNumeric(provaSplit[1]) &&
      isNumeric(provaSplit[2])) {
  } else {
    print('false');
  }
}
