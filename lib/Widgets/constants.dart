import 'package:flutter/material.dart';
import 'package:social_network_test/pages/snippets_page.dart';
import 'package:social_network_test/pages/feed_page.dart';
import 'package:social_network_test/pages/home_page.dart';
import 'package:social_network_test/pages/profile_page.dart';
import 'package:social_network_test/pages/test_page.dart';

const Color login_bg = Color(0xFF4FD1D9);
const Color signup_bg = Color(0xFFE3935B);

const double defaultPadding = 15.0;
const Duration defaultDuration = Duration(milliseconds: 300);

final String logoNEAR = 'assets/images/nearLogos/near_icon_wht.svg';

final screens = [
  HomePage(),
  FeedPage(),
  SnippetsPage(),
  ProfilePage(),
  TestPage(),
];

final screenTitles = [
  "HomePage",
  "Learning Path",
  "Temas",
  "Snippets",
  "Tests"
];

final int limitHeight = 1000;
final int limitWidth = 500;

int userScore = 2500;

var urlSnippets = "https://jsonplaceholder.typicode.com/photos";
