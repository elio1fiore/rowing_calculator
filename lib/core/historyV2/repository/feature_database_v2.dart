import 'dart:async';

import 'package:path/path.dart';
import 'package:row_calculator/core/historyV2/domain/feature.dart';

import 'package:row_calculator/core/historyV2/repository/feature_entity.dart';
import 'package:row_calculator/core/historyV2/repository/feature_fields.dart';
import 'package:row_calculator/core/historyV2/utils/name_table_db.dart';
import 'package:row_calculator/core/historyV2/utils/version_db.dart';
import 'package:row_calculator/core/infrastructure/local_response.dart';
import 'package:sqflite/sqflite.dart';

class FeaturesDatabaseV2 {
  FeaturesDatabaseV2();

  static Database? _database;

  Future<Database> get database async {
    if (_database != null) {
      return _database!;
    }

    _database = await _initDB('features_${VersionDB.vdb}');
    return _database!;
  }

  Future<Database> _initDB(String name) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, name);

    return await openDatabase(path, version: 2, onCreate: _createDB);
  }

  Future _createDB(Database db, int version) async {
    const idType = 'INTEGER PRIMARY KEY AUTOINCREMENT';

    const boolType = "BOOLEAN NOT NULL";
    const textType = "TEXT NOT NULL";
    const integerType = "INTEGER NOT NULL";

    await db.execute('''
      CREATE TABLE $tableFeature (
        ${FeatureFields.id} $idType,
        ${FeatureFields.player} $textType,
        ${FeatureFields.dateTime} $integerType,
        ${FeatureFields.isImportant} $boolType,
        ${FeatureFields.description} $textType,
        ${FeatureFields.title} $textType,
        ${FeatureFields.type} $integerType
      )
    ''');
  }

  Future<void> dropTable() async {
    final db = await database;

    db.execute("DROP TABLE IF EXISTS $tableFeature");
  }

  // Paginated fetch
  Future<LocalResponse<List<FeatureEntity>>> getFeaturePaginated(
      int page, int limit) async {
    try {
      final db = await database;
      final nEle = await _countItem();

      int maxPage;

      if (nEle == null) {
        maxPage = 1;
      } else {
        maxPage = (nEle / limit).ceil();
      }

      final offset = (page - 1) * limit;

      final result = await db.query(
        tableFeature,
        orderBy: "${FeatureFields.dateTime} DESC",
        limit: limit,
        offset: offset,
      );

      final ret = result.map((e) => FeatureEntity.fromJson(e)).toList();

      return LocalResponse.withNewData(ret, maxPage: maxPage);
    } catch (e) {
      return const LocalResponse.problemDB();
    }
  }

  // AROUND INTERVAL
  Future<List<FeatureEntity>> getFeaturesAroundId(
      int targetId, int range) async {
    try {
      final db = await database;

      int startId = targetId - range;
      int endId = targetId + range;

      // Assicurati che startId non sia minore di 1
      startId = startId < 1 ? 1 : startId;

      // Esegui la query per selezionare gli elementi nell'intervallo specificato
      final result = await db.query(
        tableFeature,
        where: '${FeatureFields.id} >= ? AND ${FeatureFields.id} <= ?',
        whereArgs: [startId, endId],
        orderBy:
            "${FeatureFields.id} ASC", // Ordina per ID in ordine ascendente
      );

      // Converte il risultato in una lista di FeatureEntity
      return result.map((e) => FeatureEntity.fromJson(e)).toList();
    } catch (e) {
      throw Exception('Errore durante il recupero dei dati: $e');
    }
  }

  Future close() async {
    final db = await database;

    db.close();
  }

  Future<void> create(Feature feature) async {
    final db = await database;

    final ef = FeatureEntity.fromDomain(feature).toJson();
    ef['_id'] = ef.remove('id');

    await db.insert(
      tableFeature,
      ef,
    );

    return;
  }

  Future<FeatureEntity> getFeatureById(int id) async {
    final db = await database;

    final maps = await db.query(
      tableFeature,
      columns: FeatureFields.values,
      where: '${FeatureFields.id} = ?',
      whereArgs: [id],
    );

    if (maps.isNotEmpty) {
      final ret = FeatureEntity.fromJson(maps.first);

      return ret;
    } else {
      throw Exception('ID $id not found');
    }
  }

  Future<int> update(Map<String, dynamic> change, int id) async {
    final db = await database;

    return db.update(
      tableFeature,
      change,
      where: '${FeatureFields.id} = ?',
      whereArgs: [id],
    );
  }

  Future<int> delete(int id) async {
    final db = await database;

    return await db.delete(
      tableFeature,
      where: '${FeatureFields.id} = ?',
      whereArgs: [id],
    );
  }

  Future<int?> _countItem() async {
    final db = await database;

    final value = Sqflite.firstIntValue(
      await db.rawQuery('SELECT COUNT(*) FROM $tableFeature'),
    );

    return value;
  }
}
