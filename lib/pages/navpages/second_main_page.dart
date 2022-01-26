import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:social_network_test/Widgets/complex_drawer_page.dart';
import 'package:social_network_test/Widgets/constants.dart';
import 'package:social_network_test/pages/navpages/bar_item_page.dart';
import 'package:social_network_test/pages/navpages/my_page.dart';
import 'package:social_network_test/pages/navpages/search_page.dart';
import 'package:social_network_test/pages/navpages/second_home_page.dart';
import 'package:social_network_test/pages/temas_page.dart';

class SecondMainPage extends StatefulWidget {
  const SecondMainPage({Key? key}) : super(key: key);
  @override
  _SecondMainPageState createState() => _SecondMainPageState();
}

class _SecondMainPageState extends State<SecondMainPage> {
  List pages = [SecondHomePage(), BarItemPage(), TemasPage(), MyPage()];
  int currentIndex = 0;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: CurvedNavigationBar(
        height: 60,
        //unselectedFontSize: 0,
        //selectedFontSize: 0,
        //type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        onTap: onTap,
        index: currentIndex,
        //selectedItemColor: Colors.black54,
        //unselectedItemColor: Colors.grey.withOpacity(0.5),
        //showSelectedLabels: false,
        //showUnselectedLabels: false,
        //elevation: 0,
        buttonBackgroundColor: redNEAR.withOpacity(0.3),
        color: greenNEAR.withOpacity(0.3),
        items: [
          Icon(Icons.apps),
          Icon(Icons.account_tree_outlined),
          Icon(Icons.ac_unit_outlined),
          Icon(Icons.person),

          /*BottomNavigationBarItem(title: Text("1"), icon: Icon(Icons.apps)),
          BottomNavigationBarItem(
              title: Text("2"), icon: Icon(Icons.bar_chart_sharp)),
          BottomNavigationBarItem(title: Text("3"), icon: Icon(Icons.search)),
          BottomNavigationBarItem(title: Text("4"), icon: Icon(Icons.person)),*/
        ],
      ),
      drawer: ComplexDrawer(),
    );
  }
}
