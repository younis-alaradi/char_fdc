import 'dart:async';
import 'package:mysql1/mysql1.dart';

class Mysql
{
  static String host='localhost',
      user ='root',
      db ='dawaa';
  static int port = 3306;
  Mysql();

  Future<MySqlConnection> getConnection() async
  {
    var setting = new ConnectionSettings
      (
        host: host,
        port: port,
        user: user,
        db: db
    );
    return await MySqlConnection.connect(setting);
  }

}