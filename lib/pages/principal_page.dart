import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:social_network_test/pages/chat_page.dart';
import 'package:social_network_test/pages/feed_page.dart';
import 'package:social_network_test/pages/home_page.dart';
import 'package:social_network_test/pages/profile_page.dart';

class PrincipalPage extends StatefulWidget {
  static String id = "principal_page";

  @override
  _PrincipalPageState createState() => _PrincipalPageState();
}

class _PrincipalPageState extends State<PrincipalPage> {
  int currentIndex = 0;
  final screens = [
    HomePage(),
    FeedPage(),
    ChatPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text('Texto de Ejemplo 1'),
      centerTitle: true,
      backgroundColor: Colors.brown,

    ),
    
    body: IndexedStack(
      index: currentIndex,
        children: screens,
    ),

    drawer: Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blueAccent
              ),
              child: Column(
                children: [
                  Text('Drawer cabecera',
                  style: TextStyle(color: Colors.white,
                  fontSize: 24),
                  ),
                  Expanded(child: Image.network('https://cdn.shopify.com/s/files/1/0026/8291/2880/products/ID_HardCover_Book_2.png?v=1614275782'))
                ],
              ),
          ),
          ListTile(
            leading: Icon(Icons.account_circle_outlined),
            title: Text('Perfil'),
          ),
          ListTile(
            leading: Icon(Icons.message),
            title: Text('Mensajes'),
          ),
        ],
      ),
    ),

    bottomNavigationBar: BottomNavigationBar(
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white70,
      onTap: (index) => setState(() => currentIndex = index),
      currentIndex: currentIndex,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
          backgroundColor: Colors.blue,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          label: 'Feed',
          backgroundColor: Colors.red,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.chat),
          label: 'Chat',
          backgroundColor: Colors.yellow,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
          backgroundColor: Colors.green,
        ),
      ],
    ),
  );
}
