import 'package:flutter/material.dart';
import 'package:social_network_test/model/url_test.dart';

class SnippetsPage extends StatefulWidget {
  @override
  State<SnippetsPage> createState() => _SnippetsPageState();
}

class _SnippetsPageState extends State<SnippetsPage> {
  //List _items = [sample_url];

  @override
  void initState() {
    super.initState();
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
          body: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(sample_url[index]["title"]),
            subtitle: Text("ID: ${sample_url[index]["id"]}"),
            leading: Image.network(sample_url[index]["url"]),
          );
        },
        itemCount: sample_url.length,
      ));
}
