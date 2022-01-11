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
          body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 40, left: 25, right: 25),
            height: MediaQuery.of(context).size.height / 2,
            width: double.maxFinite,
            child: Column(
              children: [
                Text(
                  "Create Account\n",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                Text(
                    "// Crea una nueva cuenta usando fondos de la cuenta usada para crearla\n"),
                Text(
                    "const near = await connect(config);\n\nconst account = await near.account(\"example-account.testnet\");\n"),
                Text('''await account.createAccount(
  "example-account2.testnet", // Nombre de la nueva cuenta\n
  "8hSHprDq2StXwMtNd43wDTXQYsjXcD4MJTXQYsjXcc", // Clave publica de la nueva cuenta\n
  "10000000000000000000" // Balance inicial de la nueva cuenta en yoctoNEAR);''')
              ],
            ),
          ),
          Container(
            width: double.maxFinite,
            height: MediaQuery.of(context).size.height / 2,
            child: Center(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(sample_url[index]["title"]),
                    subtitle: Text("ID: ${sample_url[index]["id"]}"),
                    leading: Image.network(sample_url[index]["url"]),
                  );
                },
                itemCount: sample_url.length,
              ),
            ),
          ),
        ],
      ));
}
