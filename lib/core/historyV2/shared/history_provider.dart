import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:row_calculator/core/historyV2/application/paginated_feature_notifier.dart';
import 'package:row_calculator/core/historyV2/repository/feature_database_v2.dart';
import 'package:row_calculator/core/historyV2/repository/feature_repository.dart';

final featuresDatabaseProvider = Provider<FeaturesDatabaseV2>(
  (ref) {
    return FeaturesDatabaseV2();
  },
);

final featureRepositoryProvider = Provider<FeatureRepository>(
  (ref) {
    return FeatureRepository(ref.watch(featuresDatabaseProvider));
  },
);

final paginatedFeatureNotifierProvider = StateNotifierProvider.autoDispose<
    PaginatedFeatureNotifier, PaginatedFeatureState>(
  (ref) {
    return PaginatedFeatureNotifier(ref.watch(featureRepositoryProvider));
  },
);
