import 'package:row_calculator/domain/measures.dart';
import 'package:row_calculator/domain/type_signature.dart';
import 'package:row_calculator/domain/type_unit_of_measure.dart';

final listMeasuresAvailable = <Measures>[
  Measures(
    name: 'Split',
    typeUnitOfMeasure: TypeUnitOfMeasure.m,
    nickname: TypeSignature.split,
  ),
  Measures(
    name: 'Distance',
    typeUnitOfMeasure: TypeUnitOfMeasure.m,
    nickname: TypeSignature.dist,
  ),
  Measures(
    name: 'Total Time',
    typeUnitOfMeasure: TypeUnitOfMeasure.s,
    nickname: TypeSignature.time,
  ),
  Measures(
    name: 'Watt',
    typeUnitOfMeasure: TypeUnitOfMeasure.watt,
    nickname: TypeSignature.watt,
  ),
  Measures(
    name: 'Energy Exp',
    typeUnitOfMeasure: TypeUnitOfMeasure.m,
    nickname: TypeSignature.ee,
  ),
];
