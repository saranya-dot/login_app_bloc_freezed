import 'dart:developer';

import 'package:login_app_bloc_freezed/domain/authresponsemodel.dart';
import 'package:login_app_bloc_freezed/domain/emp_profile_model.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class Employeedb {
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
    var path = join(databasepath, 'emp_data.db');
    return openDatabase(
      path,
      version: 1,
      onCreate: (db, version) async {
        await db.execute(
          ''' CREATE TABLE employee_data( sales_person TEXT,date_of_birth Text, department TEXT, designation TEXT)''',
        );
      },
    );
  }

  // insert login model data to the db
  Future<void> insertEmployeeData(AuthResponseModel auth) async {
    final db = await database;
    final employee = {
      "sales_person": auth.message.salesPerson,
      "date_of_birth": auth.message.dateOfBirth,
      "department": auth.message.department,
      "designation": auth.message.designation,
    };
    log("Saving Employee Data to DB: $employee");
    await db.insert(
      'employee_data',
      employee,
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<EmpProfileModel?> getEmployeeData() async {
    final db = await database;
    final result = await db.query('employee_data');

    if (result.isNotEmpty) {
      log("Fetched From DB: $result");
      return EmpProfileModel.fromJson(result.first);
    }
    return null;
  }

  Future<void> deleteEmployeeData() async {
    final db = await database;
    await db.delete('employee_data');
  }
}
