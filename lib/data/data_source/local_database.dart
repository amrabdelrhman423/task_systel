import 'package:flutter/foundation.dart';
import 'package:sqflite/sqflite.dart';

class LocalDataSource {
  static List usersName = [];
  static late Database dataBase;
  static Future createDatabase() async {
    dataBase = await openDatabase('users.db', version: 1,
        onCreate: (database, version) {
      if (kDebugMode) {
        print("database Created");
      }
      database
          .execute(
              'CREATE TABLE users (id INTEGER PRIMARY KEY, username TEXT,amount TEXT ,date TEXT)')
          .then((value) {
      }).catchError((onError) {
        if (kDebugMode) {
          print(onError.toString());
        }
      });

    }, onOpen: (database) {
      getDatabase(database);
      if (kDebugMode) {
        print("database opened");
      }
    },
    );
    return dataBase;
  }

  static getDatabase(Database database) {
    usersName=[];
    database.rawQuery('SELECT * FROM users').then((value) {
      for (var element in value) {
        usersName.add(element);
      }
    });
  }

  static insetDatabase(
      {required String username,
      required String amount,
      required String date}) async {
    return await dataBase.transaction((txn) async {
      txn
          .rawInsert(
              "INSERT INTO users(username,amount,date) VALUES('$username','$amount','$date')")
          .then((value) {
        if (kDebugMode) {
          print('$value  inserted Successfully');
        }
        getDatabase(dataBase);
      }).catchError((onError) {
        if (kDebugMode) {
          print(onError.toString());
        }
      });
    });
  }
}
