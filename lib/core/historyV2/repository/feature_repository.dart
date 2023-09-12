import 'package:fpdart/fpdart.dart';
import 'package:row_calculator/core/historyV2/domain/feature.dart';
import 'package:row_calculator/core/historyV2/repository/feature_entity.dart';
import 'package:row_calculator/core/historyV2/domain/fresh.dart';
import 'package:row_calculator/core/historyV2/domain/history_failure.dart';
import 'package:row_calculator/core/historyV2/repository/feature_database_v2.dart';
import 'package:row_calculator/core/historyV2/utils/extension.dart';
import 'package:row_calculator/core/historyV2/utils/pagination_config.dart';
import 'package:row_calculator/core/infrastructure/feature_database.dart';

class FeatureRepository {
  FeaturesDatabaseV2 _featuresDatabase;

  FeatureRepository(this._featuresDatabase);

  Future<Either<HistoryFailure, Fresh<List<Feature>>>> getFeaturePage(
      int page) async {
    try {
      final localResp = await _featuresDatabase.getFeaturePaginated(
        page,
        PaginationConfig.itemsPerPage,
      );

      return localResp.when(
        problemDB: () {
          return left(
            const HistoryFailure.db(
                "Qualcosa è andato storto nel database locale"),
          );
        },
        withNewData: (data, maxPage) {
          return right(
            Fresh.yes(
              data.toDomain(),
              hasNextPage: page < maxPage,
            ),
          );
        },
      );
    } catch (e) {
      return left(
        const HistoryFailure.db("Qualcosa è andato storto nel database locale"),
      );
    }
  }
}
