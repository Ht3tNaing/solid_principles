// Hight-level modules များသည် Low-level modules များကို မမှီခိုရ
// low-level modules များအစား abstract ,interface များကိုသာ မှီခိုရမည်

//This is low-level module
// class MySqlDatabase {
//   void connect() {
//     print("database connect");
//   }
// }

//This is hight-level modules
// class UserResp {
//   final db = MySqlDatabase();

//   void getUser() {
//     db.connect();
//     print("user");
//   }
// }

//အထက်ပါကုဒ်သည် low-level module ကိုမှီခိုနေသောကြောင့် DIP ကိုချိုးဖောက်နေသည်

abstract interface class Database {
  void connect();
}

//Low-level module
class PostgreSqlDatabase implements Database {
  @override
  void connect() {
    print("database connect");
  }
}

//Low level module
class MySqlDatabase implements Database {
  @override
  void connect() {
    print("database connect");
  }
}

//Hight-leve module
class UserRes {
  final Database database;

  UserRes({required this.database});

  void getUser() {
    database.connect();
    print("get user");
  }
}
