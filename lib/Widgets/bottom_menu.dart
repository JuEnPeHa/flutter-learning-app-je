import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:social_network_test/pages/example_page.dart';
import 'package:social_network_test/pages/explore_page.dart';
import 'package:social_network_test/pages/principal_page.dart';

class BottomMenuYouClone extends StatefulWidget {
  @override
  _BottomMenuYouCloneState createState() => _BottomMenuYouCloneState();
}

class _BottomMenuYouCloneState extends State<BottomMenuYouClone> {
  int _selectIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.home),
          label: "Principal",
        ),
        BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.compass),
          label: "Explorar",
        ),
        BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.plusCircle),
          label: "",
        ),
        BottomNavigationBarItem(icon: Icon(Icons.subscriptions_outlined),
          label: "Subscripciones",
        ),
        BottomNavigationBarItem(icon: Icon(Icons.video_library),
          label: "Biblioteca",
        ),
      ],
      currentIndex: _selectIndex,
      selectedItemColor: Colors.white,
      onTap: (index) {
        setState(() {
          _selectIndex = index;
          switch (_selectIndex) {
            case 0:
              //Navigator.pushNamed(context, PrincipalPage.id);
            Navigator.pushReplacementNamed(context, PrincipalPage.id);
              break;
            case 1:
              //Navigator.pushNamed(context, ExplorePage.id);
              Navigator.pushReplacementNamed(context, ExplorePage.id);
              break;
            case 2:
              Navigator.pushReplacementNamed(context, ExamplePage.id);
              break;
            default:
          }
        });
      },
    );
  }
}