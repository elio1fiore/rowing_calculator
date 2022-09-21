import 'dart:typed_data';

import 'package:row_calculator/domain/measures.dart';
import 'package:row_calculator/domain/type_signature.dart';
import 'package:row_calculator/domain/type_unit_of_measure.dart';

class PlayerMeasures {
  final List<Measures> listMeasures;

  PlayerMeasures({
    required this.listMeasures,
  });

  Measures getMeasures(TypeSignature typeSignature) {
    return listMeasures
        .firstWhere((element) => element.nickname == typeSignature);
  }

  List<String> getListWhitOutOneMeasure(TypeSignature typeSignature) {
    final wholeList = _listMeasuresInNickname;

    wholeList.remove(typeSignature);

    return wholeList
        .map(
          (e) => e.name,
        )
        .toList();
  }

  List<TypeSignature> get _listMeasuresInNickname =>
      listMeasures.map((e) => e.nickname).toList();
}
