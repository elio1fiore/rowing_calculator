import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:row_calculator/data/measures.dart';
import 'package:row_calculator/player/Player_measures.dart';

final playerMeasuresProvider = Provider<PlayerMeasures>(
  (ref) => PlayerMeasures(listMeasures: listMeasuresAvailable),
);
