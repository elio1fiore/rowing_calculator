import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:row_calculator/player/player_measures.dart';
import 'package:row_calculator/domain/measures.dart';
import 'package:row_calculator/util/type_signature.dart';

part 'drop_dawn_notifier.freezed.dart';

@freezed
class DropDawnState with _$DropDawnState {
  const factory DropDawnState.initial({
    required Measures firstMeasuresSelected,
    required Measures secondMeasuresSelected,
    required List<String> firstMeasuresAvailable,
    required List<String> secondMeasuresAvailable,
  }) = _Initial;
  const factory DropDawnState.selected({
    required Measures firstMeasuresSelected,
    required Measures secondMeasuresSelected,
    required List<String> firstMeasuresAvailable,
    required List<String> secondMeasuresAvailable,
  }) = _Selected;
}

class DropDawnNotifier extends StateNotifier<DropDawnState> {
  final PlayerMeasures _playerMeasures;

  final TypeSignature firstInitialMeasure;
  final TypeSignature secondInitialMeasure;

  DropDawnNotifier(
    this._playerMeasures, {
    this.firstInitialMeasure = TypeSignature.dist,
    this.secondInitialMeasure = TypeSignature.ee,
  }) : super(
          DropDawnState.initial(
            firstMeasuresSelected:
                _playerMeasures.getMeasures(firstInitialMeasure),
            secondMeasuresSelected:
                _playerMeasures.getMeasures(secondInitialMeasure),
            firstMeasuresAvailable:
                _playerMeasures.getListWhitOutOneMeasure(firstInitialMeasure),
            secondMeasuresAvailable:
                _playerMeasures.getListWhitOutOneMeasure(secondInitialMeasure),
          ),
        );

  void setMeasuresAvailable(
      TypeSignature typeSignatureSelected, NumberList numberList) {
    switch (numberList) {
      case NumberList.one:
        state = DropDawnState.selected(
          firstMeasuresSelected:
              _playerMeasures.getMeasures(typeSignatureSelected),
          secondMeasuresSelected: state.secondMeasuresSelected,
          firstMeasuresAvailable:
              _playerMeasures.getListWhitOutOneMeasure(typeSignatureSelected),
          secondMeasuresAvailable: state.secondMeasuresAvailable,
        );
        break;
      case NumberList.two:
        state = DropDawnState.selected(
          firstMeasuresSelected: state.firstMeasuresSelected,
          secondMeasuresSelected:
              _playerMeasures.getMeasures(typeSignatureSelected),
          firstMeasuresAvailable: state.firstMeasuresAvailable,
          secondMeasuresAvailable:
              _playerMeasures.getListWhitOutOneMeasure(typeSignatureSelected),
        );
        break;
      default:
        print('Qualcosa non va');
    }
  }
}

enum NumberList { one, two }
