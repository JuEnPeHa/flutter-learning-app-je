import 'package:flutter/material.dart';
import 'package:social_network_test/Widgets/constants.dart';
import 'package:social_network_test/model/lottie_animations.dart';
import 'package:velocity_x/velocity_x.dart';

class SecondHomePage extends StatefulWidget {
  const SecondHomePage({Key? key}) : super(key: key);

  @override
  _SecondHomePageState createState() => _SecondHomePageState();
}

class _SecondHomePageState extends State<SecondHomePage>
    with TickerProviderStateMixin {
  var imagesLogos = {
    "mintbase.jpeg": "Mintbase",
    "near-docs.jpeg": "NEAR docs",
    "paras.jpeg": "Paras",
    "aurora-dev.jpeg": "Aurora Dev",
  };
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(top: 70, left: 20),
            child: Row(
              children: [
                Icon(
                  Icons.menu,
                  size: 30,
                  color: Colors.black54,
                ),
                Expanded(child: Container()),
                Container(
                  margin: const EdgeInsets.only(right: 20),
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.withOpacity(0.5)),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            margin: const EdgeInsets.only(left: 20),
            child: Text(
              "Hola \$\{user.firstName\}, tienes \$\{user.actualPoints\}",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            child: Align(
              alignment: Alignment.centerLeft,
              child: TabBar(
                labelPadding: const EdgeInsets.only(
                  left: 15,
                  right: 15,
                ),
                controller: _tabController,
                labelColor: Colors.black,
                unselectedLabelColor: Colors.black.withOpacity(0.5),
                isScrollable: true,
                indicatorSize: TabBarIndicatorSize.label,
                indicator: CircleTabIndicator(color: Vx.blue500, radius: 4),
                tabs: [
                  Tab(
                    text: "Hoy",
                  ),
                  Tab(
                    text: "Inspiraciones",
                  ),
                  Tab(
                    text: "Avances",
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 20),
            height: 300,
            width: double.maxFinite,
            child: TabBarView(
              controller: _tabController,
              children: [
                ListView.builder(
                  itemCount: 3,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        nextPageFromTodayPage(index);
                      },
                      child: Container(
                        margin: const EdgeInsets.only(right: 15, top: 10),
                        width: 200,
                        height: 300,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xFF69D2E7).withOpacity(0.4)),
                        child: Padding(
                          padding: const EdgeInsets.all(14.0),
                          child: Text(textInsideBlueBoxes(index)),
                        ),
                      ),
                    );
                  },
                ),
                Text("ListView 2"),
                Text("ListView 3"),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              children: [
                Text(
                  "Explorar más en NEAR",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Expanded(child: Container()),
                Text(
                  "Ver todo",
                  style: TextStyle(color: Vx.gray500),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15),
            width: double.maxFinite,
            height: 125,
            //decoration: BoxDecoration(color: redNEAR),
            child: ListView.builder(
                itemCount: imagesLogos.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (_, index) {
                  return Container(
                    margin: const EdgeInsets.only(right: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 90,
                          height: 90,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Vx.black,
                            image: DecorationImage(
                                image: AssetImage("assets/images/logosVerMas/" +
                                    imagesLogos.keys.elementAt(index)),
                                fit: BoxFit.cover),
                          ),
                        ),
                        Container(
                          child: Text(
                            imagesLogos.values.elementAt(index),
                            style: TextStyle(fontSize: 18, color: Vx.black),
                          ),
                        ),
                      ],
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}

class CircleTabIndicator extends Decoration {
  final Color color;
  double radius;
  CircleTabIndicator({required this.color, required this.radius});
  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _CirclePainter(color: color, radius: radius);
  }
}

class _CirclePainter extends BoxPainter {
  final Color color;
  double radius;

  _CirclePainter({required this.color, required this.radius});
  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    Paint _paint = Paint();
    _paint.color = color;
    _paint.isAntiAlias = true;
    final Offset circleOffset = Offset(
        configuration.size!.width / 2 - radius / 2,
        configuration.size!.height - radius);
    canvas.drawCircle(offset + circleOffset, radius, _paint);
  }
}
