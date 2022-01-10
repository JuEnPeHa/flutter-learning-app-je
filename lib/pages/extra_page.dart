import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<Post> fetchPost() async {
  var url = 'https://jsonplaceholder.typicode.com/posts';
  var response = await http.get(Uri.parse(url));

  if (response.statusCode == 200) {
    // Si la llamada al servidor fue exitosa, analiza el JSON
    return Post.fromJson(json.decode(response.body));
  } else {
    // Si la llamada no fue exitosa, lanza un error.
    throw Exception('Failed to load post');
  }
}

class Post {
  var userId;
  var id;
  var title;
  var body;

  Post(
      {required this.userId,
      required this.id,
      required this.title,
      required this.body});

  factory Post.fromJson(List<dynamic> json) {
    return new Post(
      userId: json[0]['userId'],
      id: json[0]['id'],
      title: json[0]['title'],
      body: json[0]['body'],
    );
  }
}

void main() => runApp(FluttlerDev(post: fetchPost()));

class FluttlerDev extends StatefulWidget {
  final Future<Post> post;

  FluttlerDev({Key? key, required this.post}) : super(key: key);

  @override
  State<FluttlerDev> createState() => _FluttlerDevState();
}

class _FluttlerDevState extends State<FluttlerDev> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fetch Data Example',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Fetch Data Example'),
        ),
        body: Center(
          child: Column(
            children: [
              FutureBuilder<Post>(
                future: widget.post,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return Text(snapshot.data!.title);
                  } else if (snapshot.hasError) {
                    return Text("${snapshot.error}");
                  }

                  // Por defecto, muestra un loading spinner
                  return CircularProgressIndicator();
                },
              ),
              FloatingActionButton(onPressed: () => setState(() {}))
            ],
          ),
        ),
      ),
    );
  }
}
