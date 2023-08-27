import 'dart:async';
import 'package:path/path.dart';
import 'package:row_calculator/feature/core/domain/feature_entity.dart';
import 'package:sqflite/sqflite.dart';

class FeaturesDatabase {
  FeaturesDatabase();

  static Database? _database;

  Future<Database> get database async {
    if (_database != null) {
      return _database!;
    }

    _database = await _initDB('features_1.db');
    return _database!;
  }

  Future<Database> _initDB(String name) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, name);

    return await openDatabase(path, version: 1, onCreate: _createDB);
  }

  Future _createDB(Database db, int version) async {
    const idType = 'INTEGER PRIMARY KEY AUTOINCREMENT';

    const boolType = "BOOLEAN NOT NULL";
    const textType = "TEXT NOT NULL";

    await db.execute('''
      CREATE TABLE $tableFeature (
        ${FeatureFields.id} $idType,
        ${FeatureFields.player} $textType,
        ${FeatureFields.dateTime} $textType,
        ${FeatureFields.isImportant} $boolType,
        ${FeatureFields.description} $textType,
        ${FeatureFields.title} $textType
      )
    ''');
  }

  Future close() async {
    final db = await database;

    db.close();
  }

  Future<FeatureEntity> create(FeatureEntity feature) async {
    final db = await database;

    final id = await db.insert(
      tableFeature,
      feature.toMap(),
    );

    return feature.copyWith(id: id);
  }

  Future<FeatureEntity> readFeature(int id) async {
    final db = await database;

    final maps = await db.query(
      tableFeature,
      columns: FeatureFields.values,
      where: '${FeatureFields.id} = ?',
      whereArgs: [id],
    );

    if (maps.isNotEmpty) {
      return FeatureEntity.fromMap(maps.first);
    } else {
      throw Exception('ID $id not found');
    }
  }

  Future<List<FeatureEntity>> readAllFeatures() async {
    final db = await database;
    const orderBy = '${FeatureFields.dateTime} ASC';

    final result = await db.query(tableFeature, orderBy: orderBy);

    return result.map((json) => FeatureEntity.fromMap(json)).toList();
  }

  Future<int> update(FeatureEntity feature) async {
    final db = await database;

    return db.update(
      tableFeature,
      feature.toMap(),
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
}
