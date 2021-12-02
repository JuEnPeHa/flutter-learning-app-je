/*import 'package:social_network_test/Delete/DBTable.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DB {
  String name = "DiarioEjemplo";
  int version = 1;
  Future<Database> get open() async {
    String path = join(await getDatabasesPath(), name);
    openDatabase(path,
        version: version,
        //readOnly: false,
        onConfigure: onConfigure,
        onCreate: onCreate);
  }
}

onCreate(Database db, int version) {
  DBTable.TABLES.forEach((script) async=>await db.execute(script));
}

onConfigure(Database db) async {
  await db.execute("PRAGMA foreign_keys = ON");
}
*/