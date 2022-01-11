import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:social_network_test/Widgets/constants.dart';
import 'package:social_network_test/Widgets/custom_page_route.dart';
import 'package:social_network_test/Widgets/responsive_button.dart';
import 'package:social_network_test/model/lottie_animations.dart';
import 'package:social_network_test/pages/auth_screen.dart';
import 'package:social_network_test/pages/extra_page.dart';
import 'package:velocity_x/velocity_x.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  _OnboardingPageState createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    int index = 0;
    var color = Vx.black;
    var colorSubtitle = Colors.black54;

    return Scaffold(
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: lottieAnim(index)[1],
          itemBuilder: (context, index) {
            var size = 30.0;
            return Stack(children: <Widget>[
              bodyBackgroundFirstPage(context, index),
              Container(
                margin: EdgeInsets.only(top: 0, left: 20, right: 20),
                child: Column(children: [
                  SizedBox(
                    height: 150,
                    width: MediaQuery.of(context).size.width - 40,
                    child: const DecoratedBox(
                      decoration: BoxDecoration(color: Vx.gray50),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            titleLottieAnim(index),
                            style: TextStyle(
                                //backgroundColor: Vx.white,
                                color: color,
                                fontSize: size,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            subtitleLottieAnim(index),
                            style: TextStyle(
                                color: colorSubtitle,
                                fontSize: size * 0.85,
                                fontWeight: FontWeight.normal),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            width: 250,
                            //color: redNEAR,
                            child: Text(
                              textLottieAnim(index),
                              style: TextStyle(
                                  fontSize: size * 0.60,
                                  color: Color(0xFF878593)),
                            ),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          GestureDetector(
                            onTap: () {
                              Get.to(AuthScreen());
                            },
                            child: Container(
                              width: 200,
                              child: Row(children: [
                                ResponsiveButton(
                                  isResponsive: false,
                                  width: 120,
                                ),
                              ]),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: List.generate(
                          3,
                          (indexDots) {
                            return Container(
                              margin:
                                  const EdgeInsets.only(bottom: 4.0, top: 0.0),
                              width: 8.0,
                              height: index == indexDots ? 25.0 : 8,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                color: index == indexDots
                                    ? Vx.blue500
                                    : Vx.blue500.withOpacity(0.5),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ]),
              ),
            ]);
          }),
    );
    //Container(child: lottieAnim(2, false),);
  }

  Container bodyBackgroundFirstPage(BuildContext context, int index) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      alignment: FractionalOffset(0.5, 0.5),
      padding: EdgeInsets.symmetric(vertical: 0.0),
      transform: Matrix4.identity()..scale(1.0, 1.50),
      //alignment: Alignment.bottomCenter,
      child: lottieAnim(index)[0],
    );
  }
}
