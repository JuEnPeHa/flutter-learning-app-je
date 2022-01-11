import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:social_network_test/pages/example_page.dart';
import 'package:social_network_test/pages/exams_page.dart';
import 'package:social_network_test/pages/extra_page.dart';
import 'package:social_network_test/pages/feed_page.dart';
import 'package:social_network_test/pages/home_page.dart';
import 'package:social_network_test/pages/principal_page.dart';
import 'package:social_network_test/pages/profile_page.dart';
import 'package:social_network_test/pages/snippets_page.dart';
import 'package:social_network_test/pages/splash_screen.dart';
import 'package:social_network_test/pages/temas_page.dart';

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

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
          child: Center(
        child: Column(
          children: [
            TextButton(
                onPressed: () {
                  Get.to(TemasPage());
                },
                child: Text("1")),
            TextButton(
                onPressed: () {
                  Get.to(SplashScreen());
                },
                child: Text("2")),
            TextButton(
                onPressed: () {
                  Get.to(SnippetsPage());
                },
                child: Text("3")),
            TextButton(
                onPressed: () {
                  Get.to(ProfilePage());
                },
                child: Text("4")),
            TextButton(
                onPressed: () {
                  Get.to(PrincipalPage());
                },
                child: Text("5")),
            TextButton(
                onPressed: () {
                  Get.to(MyHomePage());
                },
                child: Text("6")),
            TextButton(
                onPressed: () {
                  Get.to(FeedPage());
                },
                child: Text("7")),
            TextButton(
                onPressed: () {
                  Get.to(ExamsPage());
                },
                child: Text("8")),
            TextButton(
                onPressed: () {
                  Get.to(ExamplePage());
                },
                child: Text("9")),
            TextButton(
                onPressed: () {
                  Get.to(FluttlerDev(post: fetchPost()));
                },
                child: Text("10")),
            //  TextButton(
            //      onPressed: () {
            //        Get.to();
            //      },
            //      child: Text("11")),
            //  TextButton(
            //      onPressed: () {
            //        Get.to();
            //      },
            //      child: Text("12")),
            //  TextButton(
            //      onPressed: () {
            //        Get.to();
            //      },
            //      child: Text("13")),
          ],
        ),
      )),
    );
  }
}
