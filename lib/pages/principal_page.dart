import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:social_network_test/Widgets/constants.dart';

class PrincipalPage extends StatefulWidget {
  static String id = "principal_page";

  @override
  _PrincipalPageState createState() => _PrincipalPageState();
}

class _PrincipalPageState extends State<PrincipalPage> {
  int currentIndex = 0;


  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text(screenTitles[currentIndex]),
      /*Text('Texto de Ejemplo 1'),
      centerTitle: true,
      backgroundColor: Colors.brown,*/

    ),
    
    body: IndexedStack(
      index: currentIndex,
        children: screens,
    ),

    //endDrawer: Drawer(),
    drawer: Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          /*DrawerHeader(
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
          ),*/
          UserAccountsDrawerHeader(
            accountName: Text("Juan Enrique"),
            accountEmail: Text("example@gmail.com"),
          currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage('https://cdn.shopify.com/s/files/1/0026/8291/2880/products/ID_HardCover_Book_2.png?v=1614275782')),
          ),
          ListTile(
            leading: Icon(Icons.account_circle_outlined),
            title: Text('Perfil'),
            subtitle: Text("Subtitle"),
            trailing: Icon(Icons.save_alt_rounded),
            onTap: (){},
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
          label: 'Snippets',
          backgroundColor: Colors.yellow,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
          backgroundColor: Colors.green,
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.sports_soccer_outlined),
            label: 'Examenes',
            backgroundColor: Colors.deepOrangeAccent
          ),
      ],
    ),
  );
}
