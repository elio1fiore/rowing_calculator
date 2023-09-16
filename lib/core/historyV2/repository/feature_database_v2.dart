import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:row_calculator/core/historyV2/domain/feature.dart';
import 'dart:math';

import 'package:row_calculator/core/historyV2/repository/feature_entity.dart';
import 'package:row_calculator/core/historyV2/repository/feature_fields.dart';
import 'package:row_calculator/core/historyV2/utils/name_table_db.dart';
import 'package:row_calculator/core/infrastructure/local_response.dart';
import 'package:sqflite/sqflite.dart';

class FeaturesDatabaseV2 {
  FeaturesDatabaseV2();

  static Database? _database;

  Future<Database> get database async {
    if (_database != null) {
      return _database!;
    }

    _database = await _initDB('features_v2.40.db');
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

      print("Ci arrivo qui");

      final offset = (page - 1) * limit;

      final result = await db.query(tableFeature, limit: limit, offset: offset);

      print("Qui si");

      print(result);

      final ret = result.map((e) => FeatureEntity.fromJson(e)).toList();

      return LocalResponse.withNewData(ret, maxPage: maxPage);
    } catch (e) {
      return const LocalResponse.problemDB();
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

  // Future<FeatureEntity> readFeature(int id) async {
  //   final db = await database;

  //   final maps = await db.query(
  //     tableFeature,
  //     columns: FeatureFields.values,
  //     where: '${FeatureFields.id} = ?',
  //     whereArgs: [id],
  //   );

  //   if (maps.isNotEmpty) {
  //     return FeatureEntity.fromMap(maps.first);
  //   } else {
  //     throw Exception('ID $id not found');
  //   }
  // }

  // Future<List<FeatureEntity>> readAllFeatures() async {
  //   final db = await database;
  //   const orderBy = '${FeatureFields.dateTime} ASC';

  //   final result = await db.query(tableFeature, orderBy: orderBy);

  //   return result.map((json) => FeatureEntity.fromMap(json)).toList();
  // }

  Future<int> update(FeatureEntity feature) async {
    final db = await database;

    return db.update(
      tableFeature,
      feature.toJson(),
      where: '${FeatureFields.id} = ?',
      whereArgs: [FeatureFields.id],
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
