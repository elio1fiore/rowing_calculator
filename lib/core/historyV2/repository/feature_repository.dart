import 'package:fpdart/fpdart.dart';
import 'package:row_calculator/core/historyV2/domain/feature.dart';
import 'package:row_calculator/core/historyV2/domain/fresh.dart';
import 'package:row_calculator/core/historyV2/domain/history_failure.dart';
import 'package:row_calculator/core/historyV2/repository/feature_database_v2.dart';
import 'package:row_calculator/core/historyV2/repository/feature_fields.dart';
import 'package:row_calculator/core/historyV2/utils/extension.dart';
import 'package:row_calculator/core/historyV2/utils/pagination_config.dart';

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

      return await localResp.when(
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

  Future<Either<HistoryFailure, Feature>> updateComment(
      int id, String comment) async {
    try {
      await _featuresDatabase.update({FeatureFields.description: comment}, id);

      final feature = await getFeatureById(id);

      return feature.fold(
        (l) => left(
          const HistoryFailure.db("Id non trovato"),
        ),
        (r) => right(r),
      );
    } catch (e) {
      return left(
        const HistoryFailure.db("Qualcosa è andato storto nel database locale"),
      );
    }
  }

  Future<Either<HistoryFailure, Feature>> getFeatureById(int id) async {
    try {
      final localResp = await _featuresDatabase.getFeatureById(id);

      final ret = localResp.toDomain();

      return right(ret);
    } catch (e) {
      return left(
        const HistoryFailure.db("Qualcosa è andato storto nel database locale"),
      );
    }
  }
}
