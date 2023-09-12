import 'package:row_calculator/core/historyV2/domain/feature.dart';
import 'package:row_calculator/core/historyV2/repository/feature_entity.dart';

extension EntityListToDomainList on List<FeatureEntity> {
  List<Feature> toDomain() {
    return map(
      (e) => e.toDomain(),
    ).toList();
  }
}
