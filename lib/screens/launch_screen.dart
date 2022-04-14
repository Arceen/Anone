import 'package:anone/constants/routes.dart';
import 'package:anone/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class LaunchScreen extends StatefulWidget {
  const LaunchScreen({Key? key}) : super(key: key);

  @override
  State<LaunchScreen> createState() => _LaunchScreenState();
}

class _LaunchScreenState extends State<LaunchScreen>
    with SingleTickerProviderStateMixin<LaunchScreen> {
  late AnimationController _animationController;
  double buttonOpacity = 0;
  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(vsync: this);
    _animationController.duration = Duration(seconds: 1);
    _animationController.addListener(fade);
    _animationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _animationController.reverse(from: 1);
      } else if (status == AnimationStatus.dismissed) {
        _animationController.forward();
      }
    });
    _animationController.forward();
  }

  void fade() {
    setState(() {
      buttonOpacity = _animationController.value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/Anone.png"),
              opacity: 0.7 + 0.2 * buttonOpacity),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        DefaultTextStyle(
                          style: GoogleFonts.robotoMono(
                            letterSpacing: 4,
                            fontSize: 28.0,
                          ),
                          child: AnimatedTextKit(
                            pause: Duration(seconds: 1),
                            animatedTexts: [
                              RotateAnimatedText('SEE',
                                  textStyle: TextStyle(
                                    color: Color.fromRGBO(255, 255, 255, 0.7),
                                  )),
                              RotateAnimatedText('HEAR',
                                  textStyle: TextStyle(
                                      color:
                                          Color.fromRGBO(255, 255, 255, 0.8))),
                              RotateAnimatedText('SAY',
                                  textStyle: TextStyle(
                                      color:
                                          Color.fromRGBO(255, 255, 255, 0.9))),
                              RotateAnimatedText(
                                'ANONYMOUSLY',
                                textStyle: TextStyle(
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                ),
                                duration: Duration(seconds: 2),
                              ),
                            ],
                            onTap: () {
                              Navigator.of(context).pushNamed(homeScreenRoute);
                            },
                            repeatForever: true,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: MaterialButton(
                padding: EdgeInsets.all(10),
                child: Text(
                  "START",
                  style: GoogleFonts.robotoMono(
                      textStyle: TextStyle(
                    // color: Colors.white,
                    color: Color.fromRGBO(
                        255, 255, 255, 0.6 + 0.4 * buttonOpacity),

                    fontSize: 23,
                    letterSpacing: 5,
                  )),
                ),
                // color: Color.fromRGBO(255, 255, 255, 0.1 * buttonOpacity),
                // elevation: 5,
                // shape: CircleBorder(
                //   side: BorderSide(
                //       color: Color.fromRGBO(255, 255, 255, 0.7), width: 0),
                // ),
                onPressed: () {
                  Navigator.of(context).pushNamed(homeScreenRoute);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// const colorizeColors = [
//   Color(0xFF381E73),
//   Color(0xFF381E73),
//   Color(0xFF5F479B),
//   Color(0xFF381E73),
// ];

// const colorizeTextStyle = TextStyle(
//   fontSize: 30.0,
//   fontFamily: 'Horizon',
// );
