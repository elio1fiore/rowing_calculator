import 'package:path/path.dart';
import 'package:row_calculator/core/historyV2/utils/name_table_db.dart';
import 'package:row_calculator/core/infrastructure/helper_fields.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  DatabaseHelper();

  static Database? _database;

  Future<Database> get database async {
    if (_database != null) {
      return _database!;
    }

    _database = await _initDB('features_23');
    return _database!;
  }

  Future<Database> _initDB(String name) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, name);

    return await openDatabase(path, version: 2, onCreate: _createDB);
  }

  Future _createDB(Database db, int version) async {
    const idType = 'INTEGER PRIMARY KEY';

    const boolType = "BOOLEAN NOT NULL";
    // const textType = "TEXT NOT NULL";
    // const integerType = "INTEGER NOT NULL";

    await db.execute('''
      CREATE TABLE $tableHelper (
        ${HelperFields.id} $idType,
        ${HelperFields.themeLight} $boolType,
      )
    ''');
  }

  Future<int?> _countItem() async {
    final db = await database;

    final value = Sqflite.firstIntValue(
      await db.rawQuery('SELECT COUNT(*) FROM $tableHelper'),
    );

    return value;
  }

  Future<bool?> getTheme() async {
    final db = await database;
    final result = await db.query(tableHelper, limit: 1);

    if (result.isNotEmpty) {
      return result.first[HelperFields.themeLight] as bool?;
    }
    return null;
  }

  Future<void> setTheme(bool isLight) async {
    final db = await database;

    db.insert(
      tableHelper,
      {HelperFields.themeLight: isLight},
    );
  }

  Future<int> update(bool isLight) async {
    final db = await database;

    return db.update(
      tableHelper,
      {HelperFields.themeLight: isLight},
      where: 'id = ?',
      whereArgs: [1],
    );
  }
}
