import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:social_network_test/model/video_card.dart';
import 'package:social_network_test/pages/splash_screen.dart';

import '../Widgets/bottom_menu.dart';

class PrincipalPage extends StatefulWidget {
  static String id = "principal_page";

  @override
  _PrincipalPageState createState() => _PrincipalPageState();
}

class _PrincipalPageState extends State<PrincipalPage> {
  List<VideoCard> videos;

  @override
  void initState(){
    videos = [];
    videos.addAll([
      VideoCard(
        duration: "4.57", nameChannel: "JEPH games", thumbnail: "assets/images/laptop-336373_640.jpg",
        title: "Crear videos de calidad increible", views: "120"),
      VideoCard(
          duration: "7.45", nameChannel: "JEPH try", thumbnail: "assets/images/miniature-figure-1745770_640.jpg",
          title: "Crear videos de calidad increible", views: "1"),
      VideoCard(
          duration: "2.17", nameChannel: "JEPH", thumbnail: "assets/images/office-620822_640.jpg",
          title: "Como ver la tele con los ojos cerrados", views: "5061219283"),
      VideoCard(
          duration: "1.23", nameChannel: "videojuegos locos", thumbnail: "assets/images/train-797072_640.jpg",
          title: "Como comprar cebollas sin llorar en el intento", views: "10240405"),
      VideoCard(
          duration: "8.30", nameChannel: "Juega master", thumbnail: "assets/images/despaired-2261021_640.jpg",
          title: "Ver 2 veces antes de elegir contador", views: "50101"),
      VideoCard(
          duration: "5.59", nameChannel: "Coding master", thumbnail: "assets/images/Copia de JEPH.png",
          title: "Tacaños comprando en el super, no te lo vas a creer", views: "52041"),
      VideoCard(
          duration: "4.25", nameChannel: "Catboy, Ululete y Gecko", thumbnail: "assets/images/laptop-336373_640.jpg",
          title: "Evangelion, te lo explico con peras y manzanas", views: "101"),
    ]);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: CustomScrollView(
            primary: true,
            slivers: [
              SliverAppBar(
                title: Row(
                  children: [
                    Image.asset("assets/images/JEPH.png",
                      height: 50,
                    ),
                    SizedBox(
                      width: 7.5,
                    ),
                    Text("YouClone"),
                  ],

                ),
                actions: [
                  IconButton(icon: Icon(Icons.tv),
                    onPressed: () {},
                  ),
                  IconButton(icon: Icon(FontAwesomeIcons.bell),
                      onPressed: () {}
                      ),
                  IconButton(icon: Icon(FontAwesomeIcons.search),
                      onPressed: () {}
                  ),
                  GestureDetector(
                    child: CircleAvatar(
                      radius: 15.0,
                      backgroundImage: AssetImage(
                        "assets/images/avatar-1300331_640.png",
                      ),
                    ),
                    onTap: () {},
                  ),
                  SizedBox(
                    width: 10.0,
                  )
                ],
              ),
              SliverList(delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int position) {
                    return Container(
                      margin: EdgeInsets.only(top: 10.0),
                      child: Stack(
                        children: [
                          Column(
                            children: [
                              Image.asset(videos[position].thumbnail),
                              SizedBox(
                                height: 10.0,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                  GestureDetector(
                                    child: CircleAvatar(
                                      radius: 25.0,
                                      backgroundImage: AssetImage(
                                        "assets/images/avatar-1300331_640.png",
                                      ),
                                    ),
                                    onTap: () {},
                                  ),
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                  Expanded(
                                    child: Text("${videos[position].title}",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 20.0
                                    ),
                                    ),
                                  ),
                                  IconButton(icon: Icon(Icons.more_vert),
                                  onPressed: null,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 1.0,
                              ),
                              Text("${videos[position].nameChannel}" + " - " + "${videos[position].views}" + " vistas - hace 1 mes",
                                  style: TextStyle(
                                    color: Colors.white.withOpacity(0.75)
                                  ),
                                  textAlign: TextAlign.right),
                            ],
                          ),
                          Positioned(
                            right: 5,
                            bottom: 85,
                            child: Container(
                              color: Colors.black87,
                              child: Text("${videos[position].duration}",
                                style: TextStyle(
                                  fontSize: 20.0
                              ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  childCount: videos.length,
              ),
              )
            ],
          ),
          bottomNavigationBar: BottomMenuYouClone(),
        ),
    );
  }
}
