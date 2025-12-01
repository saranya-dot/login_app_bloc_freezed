import 'dart:convert';
import 'dart:developer';
import 'package:login_app_bloc_freezed/domain/studentmodel.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class StudentDatabase {
  static Database? _database; // a static private db
  Future<Database> get database async {
    if (_database != null) {
      return _database!;
    } else {
      _database = await _initDatabase(); // method to initialize the database
      return _database!;
    }
  }

  Future<Database> _initDatabase() async {
    var databasepath = await getDatabasesPath();
    var path = join(databasepath, 'app_data.db');
    return openDatabase(
      path,
      version: 1,
      onCreate: (db, version) async {
        await db.execute(
          ''' CREATE TABLE student_data(id TEXT PRIMARY KEY, name TEXT,age Text, phonenumber TEXT, emailid TEXT)''',
        );
      },
    );
  }

  // insert login model data to the db
  Future<void> insertStudentData(
    StudentRequestmodel studentRequestmodel,
  ) async {
    final db = await database;
    log("Inserting: ${jsonEncode(studentRequestmodel.toJson())}");
    await db.insert(
      'student_data',
      studentRequestmodel.toJson(),
      conflictAlgorithm: ConflictAlgorithm.ignore,
    );
  }

  // Future<List<StudentRequestmodel>?> getStudentData() async {
  //   final db = await database;
  //   final List<Map<String, dynamic>> result = await db.query('student_data');
  //   if (result.isNotEmpty) {
  //     return StudentRequestmodel.fromJson(result);
  //   } else {
  //     return null;
  //   }
  // }
  Future<List<StudentRequestmodel>> getStudentData() async {
    final db = await database;
    final result = await db.query('student_data');

    return result.map((e) {
      return StudentRequestmodel(
        id: e['id'] as String,
        name: e['name'] as String,
        age: e['age'] as String,
        phonenumber: e['phonenumber'] as String,
        emailid: e['emailid'] as String,
      );
    }).toList();
  }

  Future<void> updateStudentData(
    StudentRequestmodel studentRequestmodel,
  ) async {
    final db = await database;
    final result = await db.query('student_data');
    await db.update(
      'student_data',
      studentRequestmodel.toJson(),
      where: 'id = ?',
      whereArgs: [studentRequestmodel.id],
    );
  }

  Future<void> deleteStudent(StudentRequestmodel studentRequestmodel) async {
    final db = await database;
    final result = await db.query('student_data');
    await db.delete(
      'student_data',
      where: 'id = ?',
      whereArgs: [studentRequestmodel.id],
    );
  }
}
