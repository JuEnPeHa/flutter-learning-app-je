import 'package:flutter/material.dart';
import 'package:social_network_test/pages/snippets_page.dart';
import 'package:social_network_test/pages/feed_page.dart';
import 'package:social_network_test/pages/home_page.dart';
import 'package:social_network_test/pages/profile_page.dart';
import 'package:social_network_test/pages/test_page.dart';

const Color login_bg = Color(0xFF4FD1D9);
const Color signup_bg = Color(0xFFE3935B);

const Color blueNEAR = Color(0xFF5F8AFA);
const Color greenNEAR = Color(0xFFAAD055);
const Color yellowNEAR = Color(0xFFFFC860);
const Color redNEAR = Color(0xFFDB5555);
const Color turquoiseNEAR = Color(0xFF4FD1D9);
const Color purpleNEAR = Color(0xFF6B6EF9);
const Color lilacNEAR = Color(0xFFA463B0);
const Color orangeNEAR = Color(0xFFE3935B);


const double defaultPadding = 15.0;
const Duration defaultDuration = Duration(milliseconds: 300);

final String logoNEAR = 'assets/images/nearLogos/near_icon_wht.svg';

final screens = [
  FeedPage(),
  SnippetsPage(),
  MyHomePage(),
  ProfilePage(),
  TestPage(),
];

final screenTitles = [
  "Learning Path",
  "Temas",
  "HomePage",
  "Snippets",
  "Tests"
];

final int limitHeight = 1000;
final int limitWidth = 500;

int userScore = 2500;

var urlSnippets = "https://jsonplaceholder.typicode.com/photos";

final screenColors = [
  Colors.blueAccent,
Colors.redAccent,
Colors.yellowAccent,
Colors.greenAccent,
Colors.orangeAccent
];

int currentScreen = 2;
bool ingles = true;

final iconsBottomBar = <Widget>[
  Icon(Icons.search, size: 30,),
  Icon(Icons.account_tree_outlined, size: 30,),
  Icon(Icons.home, size: 30,),
  Icon(Icons.set_meal_sharp, size: 30,),
  Icon(Icons.person_pin_circle_rounded, size: 30,),
];