import 'package:row_calculator/domain/drop_dawn_items.dart';
import 'package:row_calculator/domain/type_input.dart';
import 'package:row_calculator/domain/type_signature.dart';

class PlayerDawnButton {
  final List<DropDawnItem> listDropDawnItems;

  late List<DropDawnItem> firstListMutable;
  late List<DropDawnItem> secondListMutable;
  late List<String> listSignature;

  late DropDawnItem firstValue;
  late DropDawnItem secondValue;

  late String firstLabel;
  late String secondLabel;

  PlayerDawnButton({
    required this.listDropDawnItems,
  }) {
    firstListMutable = listDropDawnItems;
    secondListMutable = listDropDawnItems.reversed.toList();

    firstValue = firstListMutable.first;
    secondValue = secondListMutable.first;

    listSignature = listDropDawnItems.map(
      (e) {
        return e.signature.name;
      },
    ).toList();

    removeItemSelected(firstValue.typeInput);
    removeItemSelected(secondValue.typeInput);

    setFirstLabel(firstValue.typeInput);
    setSecondLabel(secondValue.typeInput);
  }

  void removeItemSelected(TypeInput typeInput) {
    reset();

    firstListMutable.removeWhere(
      (element) => element.typeInput == typeInput,
    );
    secondListMutable.removeWhere(
      (element) => element.typeInput == typeInput,
    );
  }

  void reset() {
    firstListMutable.clear();
    secondListMutable.clear();
    firstListMutable = listDropDawnItems;
    secondListMutable = listDropDawnItems;
  }

  void setFirstLabel(TypeInput firstValueType) {
    switch (firstValueType) {
      case TypeInput.distance:
        firstLabel = 'Distance';
        break;
      case TypeInput.energyExpenditure:
        firstLabel = 'Energy Expenditure';
        break;
      case TypeInput.split:
        firstLabel = 'Split';
        break;
      case TypeInput.totalTime:
        firstLabel = 'Total Time';
        break;
      case TypeInput.watt:
        firstLabel = 'Watt';
        break;
      default:
        print('Qualcosa è andato storto');
    }
  }

  void setSecondLabel(TypeInput secondValueType) {
    switch (secondValueType) {
      case TypeInput.distance:
        secondLabel = 'Distance';
        break;
      case TypeInput.energyExpenditure:
        secondLabel = 'Energy Expenditure';
        break;
      case TypeInput.split:
        secondLabel = 'Split';
        break;
      case TypeInput.totalTime:
        secondLabel = 'Total Time';
        break;
      case TypeInput.watt:
        secondLabel = 'Watt';
        break;
      default:
        print('Qualcosa è andato storto');
    }
  }

  void onChangeFirst(String value) {
    if (value == TypeSignature.de.name) {
      firstValue = firstListMutable.firstWhere(
        (element) => element.signature == TypeSignature.de,
      );
      setFirstLabel(firstValue.typeInput);
      removeItemSelected(firstValue.typeInput);
    } else if (value == TypeSignature.dist.name) {
      firstValue = firstListMutable.firstWhere(
        (element) => element.signature == TypeSignature.dist,
      );
      setFirstLabel(firstValue.typeInput);
      removeItemSelected(firstValue.typeInput);
    } else if (value == TypeSignature.split.name) {
      firstValue = firstListMutable.firstWhere(
        (element) => element.signature == TypeSignature.split,
      );
      setFirstLabel(firstValue.typeInput);
      removeItemSelected(firstValue.typeInput);
    } else if (value == TypeSignature.time.name) {
      firstValue = firstListMutable.firstWhere(
        (element) => element.signature == TypeSignature.time,
      );
      setFirstLabel(firstValue.typeInput);
      removeItemSelected(firstValue.typeInput);
    } else if (value == TypeSignature.watt.name) {
      firstValue = firstListMutable.firstWhere(
        (element) => element.signature == TypeSignature.watt,
      );
      setFirstLabel(firstValue.typeInput);
      removeItemSelected(firstValue.typeInput);
    }
  }

  void onChangeSecond(String value) {
    if (value == TypeSignature.de.name) {
      firstValue = secondListMutable.firstWhere(
        (element) => element.signature == TypeSignature.de,
      );
      setSecondLabel(firstValue.typeInput);
      removeItemSelected(firstValue.typeInput);
    } else if (value == TypeSignature.dist.name) {
      firstValue = secondListMutable.firstWhere(
        (element) => element.signature == TypeSignature.dist,
      );
      setSecondLabel(firstValue.typeInput);
      removeItemSelected(firstValue.typeInput);
    } else if (value == TypeSignature.split.name) {
      firstValue = secondListMutable.firstWhere(
        (element) => element.signature == TypeSignature.split,
      );
      setSecondLabel(firstValue.typeInput);
      removeItemSelected(firstValue.typeInput);
    } else if (value == TypeSignature.time.name) {
      firstValue = secondListMutable.firstWhere(
        (element) => element.signature == TypeSignature.time,
      );
      setSecondLabel(firstValue.typeInput);
      removeItemSelected(firstValue.typeInput);
    } else if (value == TypeSignature.watt.name) {
      firstValue = secondListMutable.firstWhere(
        (element) => element.signature == TypeSignature.watt,
      );
      setSecondLabel(firstValue.typeInput);
      removeItemSelected(firstValue.typeInput);
    }
  }
}
