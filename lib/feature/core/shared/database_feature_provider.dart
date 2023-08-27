import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:row_calculator/feature/core/infrastructure/feature_database.dart';

final featuresDatabaseProvider = Provider<FeaturesDatabase>(
  (ref) {
    return FeaturesDatabase();
  },
);
