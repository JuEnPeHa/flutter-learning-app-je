import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:social_network_test/Widgets/constants.dart';
import 'dart:convert';

class SnippetsPage extends StatefulWidget {
  @override
  State<SnippetsPage> createState() => _SnippetsPageState();
}

class _SnippetsPageState extends State<SnippetsPage> {
  var data;

  @override
  void initState(){
    super.initState();
    fetchData();
    setState(() {});
  }

  fetchData()async{
    var respuesta = await http.get(Uri.parse(urlSnippets));
    data = jsonDecode(respuesta.body);
    print(data);
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
    //appBar: AppBar(
      //title: Text('Snippets'),
    //),
    body: data != null
        ? ListView.builder(itemBuilder: (context, index){
          return ListTile(
            title: Text(data[index]["title"]),
            subtitle: Text("ID: ${data[index]["id"]}"),
            leading: Image.network(data[index]["url"]),
          );
    },
    itemCount: data.length,
    )
        : Center(
      child: CircularProgressIndicator(),
    ),
  );
}