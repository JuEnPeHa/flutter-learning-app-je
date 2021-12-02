/*import 'package:social_network_test/Delete/CRUD.dart';
import 'package:social_network_test/Delete/DBTable.dart';

class Page extends CRUD {
  int id;
  String date;
  String title;
  String content;
  int idDiary;

  Page({this.id, this.date="", this.title="", this.content="", this.idDiary=0}):super(DBTable.PAGE);

  factory Page.toObject(Map<dynamic, dynamic> data) {
    return (data!=null)? Page(
      id: data['id'],
      date: data['type'],
      title: data['title'],
      content: data['content'],
      idDiary: data['idDiary'],

    ):Page();
  }

  Map<String, dynamic> toMap() {
    return {
      'id': this.id,
      'date': this.date,
      'title': this.title,
      'content': this.content,
      'idDiary': this.idDiary,

    };
  }

  getList(){
    return (parsed as List).map((map) => Page.toObject(map)).toList();
  }
  
}
*/