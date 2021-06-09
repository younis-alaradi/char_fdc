import 'package:chatUI/models/Mysql.dart';

class User {
  final int id;
  final String name;
  final String imageUrl;

  User({
    this.id,
    this.name,
    this.imageUrl,
  });
}
class functions {
  //admins functions

  static String getAdmins_UserName(int AdminID) {
    var db = new Mysql();
    var adminName = '';
    db.getConnection().then((conn) {
      String sql = 'select Admin_Fname from dawaa.admin where adminID =' +
          AdminID.toString();
      conn.query(sql).then((results) {
        for (var row in results) {
          adminName = row[0];
          print(adminName);
        }
      });
      conn.close();
    });
    return adminName;
  }

  static String getAdmin_contact_Details(int AdminID) {
    var db = new Mysql();
    var admin = '';
    db.getConnection().then((conn) {
      String sql = 'select Admin_Email from dawaa.admin where adminID =' +
          AdminID.toString();
      conn.query(sql).then((results) {
        for (var row in results) {
          admin = row[0];
          print(admin);
        }
      });
      conn.close();
    });
    return admin;
  }

  static String getAdmin_description(int AdminID) {
    var db = new Mysql();
    var adminName = '';
    db.getConnection().then((conn) {
      String sql = 'select Admin_description from dawaa.admin where adminID =' +
          AdminID.toString();
      conn.query(sql).then((results) {
        for (var row in results) {
          adminName = row[0];
          print(adminName);
        }
      });
      conn.close();
    });
    return adminName;
  }

  static String getAdminImage(int adminid)
  {
    var db = new Mysql();
    var initialize = '';
    db.getConnection().then((conn) {
      String sql = 'select Image_link from dawaa.admin where adminID =' +
          adminid.toString();
      conn.query(sql).then((results) {
        for (var row in results) {
          initialize = row[0];
          print(initialize);
        }
      });
      conn.close();
    });
    return initialize;
  }

  static int getAdminCount() {
    var db = new Mysql();
    int count;
    db.getConnection().then((conn) {
      String sql = 'select COUNT(adminID) from dawaa.admin';
      conn.query(sql).then((results) {
        for (var row in results) {
          count = int.parse(row[0].toString());
          print(count);
        }
      });
      conn.close();
    });
    return count.toInt();
  }


  /***********************************Pharmaceis functions *****************************************/
// Pharmacist Functions
  static String getPharmaciest_UserName(int Pharmacesit_userID) {
    var db = new Mysql();
    var Ph_name = '';
    db.getConnection().then((conn) {
      String sql = 'select Ph_Name from dawaa.pharmacist where Ph_ID =' +
          Pharmacesit_userID.toString();
      conn.query(sql).then((results) {
        for (var row in results) {
          Ph_name = row[0];

          print(Ph_name);
        }
      });
      conn.close();
    });
    return Ph_name;
  }

  static String getPharmaciest_Contact_details(int Ph_UserID) {
    var db = new Mysql();
    var adminName = '';
    db.getConnection().then((conn) {
      String sql = 'select Ph_Email from dawaa.pharmacist where Ph_ID =' +
          Ph_UserID.toString();
      conn.query(sql).then((results) {
        for (var row in results) {
          adminName = row[0];
          print(adminName);
        }
      });
      conn.close();
    });
    return adminName;
  }

  static String getPharmaciesrt_description(int Ph_userID) {
    var db = new Mysql();
    var initialize = '';
    db.getConnection().then((conn) {
      String sql = 'select Ph_descripition from dawaa.pharmacist where Ph_ID =' +
          Ph_userID.toString();
      conn.query(sql).then((results) {
        for (var row in results) {
          initialize = row[0];
          print(initialize);
        }
      });
      conn.close();
    });
    return initialize;
  }

  static String getPharmisastImage(int Ph_userID) {
    var db = new Mysql();
    var initialize = '';
    db.getConnection().then((conn) {
      String sql = 'select Image_link from dawaa.pharmacist where Ph_ID =' +
          Ph_userID.toString();
      conn.query(sql).then((results) {
        for (var row in results) {
          initialize = row[0];
          print(initialize);
        }
      });
      conn.close();
    });
    return initialize;
  }

  static int getPharmacistCount()
  {
    var db = new Mysql();
    int count;
    db.getConnection().then((conn) {
      String sql = 'select COUNT(Ph_ID) from dawaa.pharmacist';
      conn.query(sql).then((results) {
        for (var row in results) {
          count = row[0];
          print(conn);
        }
      });
      conn.close();
    });
    return count.toInt();

  }

  static void ActiveUser() {

  }

  //User Array list
  static List<User> Users=[];
//Setup  available admins from database to users
  static void setUp_Admin()
  {

    for(var index = Users.length ;index<=functions.getAdminCount();index++)
    {
      Users[index]=

          User(
              id: index,
              name:functions.getAdmins_UserName(index),
              imageUrl: functions.getAdminImage(index)
          );

    }
  }

// setup pharmacist from databse to users

   static void setUp_Pharmacist()
  {
    for(var index = Users.length ;index<=functions.getPharmacistCount();index++)
    {
      Users[index]=

          User(
              id: index,
              name:functions.getPharmaciest_UserName(index),
              imageUrl: functions.getPharmisastImage(index)
          );

    }

  }

}




