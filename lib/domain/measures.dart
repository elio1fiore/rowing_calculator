import 'package:row_calculator/util/type_signature.dart';
import 'package:row_calculator/util/type_unit_of_measure.dart';

class Measures {
  late final double? _value;
  final String name;
  final TypeSignature nickname;
  final TypeUnitOfMeasure typeUnitOfMeasure;

  double? get() => _value;
  void set(double value) => _value = value;

  Measures({
    required this.nickname,
    required this.name,
    required this.typeUnitOfMeasure,
  });
}
