/*import 'package:social_network_test/Delete/DB.dart';
import 'package:sqflite/sqlite_api.dart';

abstract class CRUD {
  final String table;
  const CRUD(this.table);

  Future<Database> get database async {
    return await DB().open;
  }

  query(String sql,List<dynamic> arguments)async{
    final db=await database;
    // ignore: unnecessary_statements
    'OR 1=1 --';
    //db.rawQuery("SELECT * FROM login WHERE username=? AND password=?",[username,password]);
    return await db.rawQuery(sql,arguments); 
  }

  update(Map<String,dynamic>data)async{
    final db=await database;
    return await db.update(table, data,where: "id=?",whereArgs: [data['id']]);

  }

  insert(Map<String,dynamic>data)async{
    final db=await database;
    return await db.insert(table, data);

  }

  delete(int id)async{
    final db=await database;
    return await db.delete(table,where: "id=?",whereArgs: [id]);

  }
}
*/