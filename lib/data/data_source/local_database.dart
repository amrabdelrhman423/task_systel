import 'package:sqflite/sqflite.dart';

class LocalDataSource {
  static List usersName = [];
  static late Database dataBase;
  static Future createDatabase() async {
    dataBase = await openDatabase('users.db', version: 1,
        onCreate: (database, version) {
      print("database Created");
      database
          .execute(
              'CREATE TABLE users (id INTEGER PRIMARY KEY, username TEXT,amount TEXT ,date TEXT)')
          .then((value) {
      }).catchError((onError) {
        print(onError.toString());
      });

    }, onOpen: (database) {
      getDatabase(database);
      print("database opened");
    },
    );
    return dataBase;
  }

  static getDatabase(Database database) {
    usersName=[];
    database.rawQuery('SELECT * FROM users').then((value) {
      value.forEach((element) {
        usersName.add(element);
      });
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
        print('${value}  inserted Successfully');
        getDatabase(dataBase);
      }).catchError((onError) {
        print(onError.toString());
      });
    });
  }
}
