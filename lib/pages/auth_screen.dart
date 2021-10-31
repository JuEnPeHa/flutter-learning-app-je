import 'dart:math';
import 'package:flutter/material.dart';
import 'package:social_network_test/Widgets/constants.dart';
import 'package:social_network_test/Widgets/login_form.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:social_network_test/Widgets/sign_up_form.dart';
import 'package:social_network_test/Widgets/social_buttons.dart';

class AuthScreen extends StatefulWidget {
  static String id = "auth_screen";

  const AuthScreen({Key? key}) : super(key: key);

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> with SingleTickerProviderStateMixin {
  bool _isShowingSignUp = false;
  late AnimationController _animationController;
  late Animation<double> _animationTextRotate;

  void setUpAnimation() {
    _animationController = AnimationController(
        vsync: this, duration: defaultDuration);
    _animationTextRotate = Tween<double>(begin: 0, end: 90).animate(_animationController);
  }

  void updateView() {
    setState(() {
      _isShowingSignUp = !_isShowingSignUp;
    });
    _isShowingSignUp ? _animationController.forward() : _animationController.reverse();
  }

  @override
  void initState() {
    setUpAnimation();
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    final String logoNEAR = 'assets/images/nearLogos/near_icon_wht.svg';
    final _size = MediaQuery.of(context).size;
    double espacioBottom = MediaQuery.of(context).viewInsets.bottom;
    var keyboardHide = true;
    if (espacioBottom == 0.0) {
      keyboardHide = true;
    }
    else {
      keyboardHide = false;
    }

    return Scaffold(
      body: AnimatedBuilder(
        animation: _animationController,
        builder: (context, _) {
          return Stack(
            children: [

              //Login
              AnimatedPositioned(
                duration: defaultDuration,
                width: _size.width / 5 * 4.5,
                height: _size.height,
                left: _isShowingSignUp ? -_size.width / 5 * 4.0 : 0,
                  child: Container(
                    color: login_bg,
                    child: LoginForm(),
                ),
              ),

              //Signup
              AnimatedPositioned(
                duration: defaultDuration,
                height: _size.height,
                width: _size.width / 5 * 4.5,
                left: _isShowingSignUp ? _size.width / (5*2) : _size.width / 5 * 4.5,
                child: Container(
                color: signup_bg,
                  child: SignUpForm(),
              ),
              ),

              //Logo
              AnimatedPositioned(
                duration: defaultDuration * 1.25,
                top: _size.height * 0.1,
                left: 0,
                right: _isShowingSignUp ? -_size.width * 0.06 : _size.width * 0.06,
                  child: CircleAvatar(
                    radius: 35 ,
                    backgroundColor: Colors.white54,
                    child: SvgPicture.asset(
                        logoNEAR,
                    color: _isShowingSignUp ? signup_bg : login_bg,
                    ),
                  ),
              ),
              
              AnimatedPositioned(
                duration: defaultDuration,
                top: _size.height * 0.2,
                left: 0,
                right: _isShowingSignUp ? -_size.width * 0.06 : _size.width * 0.06,
                child: AnimatedDefaultTextStyle(
                  textAlign: TextAlign.center,
                  duration: defaultDuration,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  child: Text("NEAR Learning App"),
                ),
              ),

              //Botones Sociales
              AnimatedPositioned(
                duration: defaultDuration * 1.25,
                width: _size.width,
                bottom: keyboardHide ? _size.height * 0.1 : _size.height * 0.0,
                  right: _isShowingSignUp ? -_size.width * 0.06 : _size.width * 0.06,
                  child: SocialButtons(),
              ),

              //Texto Login
              AnimatedPositioned(
                  duration: defaultDuration * 0.5,
                  bottom: keyboardHide ? _isShowingSignUp ? _size.height / 3 : _size.height * 0.3 : _size.height * 0.075,
                  left: _isShowingSignUp ? 0 : ((_size.width / 5 * 4.5) / 4),
                  child: AnimatedDefaultTextStyle(
                    duration: defaultDuration,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: _isShowingSignUp ? 20 : 32,
                      fontWeight: FontWeight.bold,
                      color: _isShowingSignUp ? Colors.white : Colors.white70,
                    ),
                    child: Transform.rotate(
                      angle: -_animationTextRotate.value * pi / 180,
                      alignment: Alignment.topLeft,
                      child: InkWell(
                        onTap: (){
                          if (_isShowingSignUp) {
                            updateView();
                          }
                          else {
                            //Login
                          }
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: defaultPadding * 0.60),
                          width: 160,
                          //color: Colors.redAccent,
                          child: Text(
                            "Log In".toUpperCase(),
                          ),
                        ),
                      ),
                    ),
                  ),
              ),

              //Texto Sign Up
              AnimatedPositioned(
                duration: defaultDuration * 0.5,
                bottom: keyboardHide ? !_isShowingSignUp ? _size.height / 3 : _size.height * 0.3 : _size.height * 0.075,
                right: _isShowingSignUp ? ((_size.width / 5 * 4.5) / 4) : 0,
                child: AnimatedDefaultTextStyle(
                  duration: defaultDuration,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: !_isShowingSignUp ? 20 : 32,
                    fontWeight: FontWeight.bold,
                    color: _isShowingSignUp ? Colors.white : Colors.white70,
                  ),
                  child: Transform.rotate(
                    angle: (90 - _animationTextRotate.value) * pi / 180,
                    alignment: Alignment.topRight,
                    child: InkWell(
                      onTap: (){
                        if (!_isShowingSignUp) {
                          updateView();
                        }
                        else {
                          //SignUp
                        }
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: defaultPadding * 0.60),
                        width: 160,
                        //color: Colors.redAccent,
                        child: Text(
                          "Sign Up".toUpperCase(),
                        ),
                      ),
                    ),
                  ),
                ),
              ),

            ],
          );
        }
      ),
    );
  }
}