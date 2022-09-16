import 'package:row_calculator/domain/drop_dawn_items.dart';
import 'package:row_calculator/domain/type_input.dart';
import 'package:row_calculator/domain/type_signature.dart';

final List<DropDawnItem> listDropDawnItem = [
  DropDawnItem(
    signature: TypeSignature.dist,
    typeInput: TypeInput.distance,
  ),
  DropDawnItem(
    signature: TypeSignature.de,
    typeInput: TypeInput.energyExpenditure,
  ),
  DropDawnItem(
    signature: TypeSignature.split,
    typeInput: TypeInput.split,
  ),
  DropDawnItem(
    signature: TypeSignature.time,
    typeInput: TypeInput.totalTime,
  ),
  DropDawnItem(
    signature: TypeSignature.watt,
    typeInput: TypeInput.watt,
  ),
];
