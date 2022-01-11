import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;



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
