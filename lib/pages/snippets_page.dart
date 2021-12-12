import 'package:flutter/material.dart';
import 'dart:convert';

class SnippetsPage extends StatefulWidget {
  @override
  State<SnippetsPage> createState() => _SnippetsPageState();
}

class _SnippetsPageState extends State<SnippetsPage> {
  List _items = [];
  var data;
  var urlTest = "assets/json/urlTest.json";

  @override
  void initState() {
    super.initState();
    readJson();
    setState(() {});
  }

  Future<void> readJson() async {
    final response = await jsonDecode(urlTest);
    final data = await jsonDecode(response);
    print(data);
    if (data != null) {
      setState(() {
        _items = data;
      });
    }
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
            ? ListView.builder(
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(_items[index]["title"]),
                    subtitle: Text("ID: ${_items[index]["id"]}"),
                    leading: Image.network(_items[index]["url"]),
                  );
                },
                itemCount: _items.length,
              )
            : Center(
                child: CircularProgressIndicator(),
              ),
      );
}
