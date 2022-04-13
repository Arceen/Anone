import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class LaunchScreen extends StatelessWidget {
  const LaunchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF000000),
        title: Center(
          child: AnimatedTextKit(
            animatedTexts: [
              ColorizeAnimatedText(
                'ANone',
                textStyle: colorizeTextStyle,
                colors: colorizeColors,
              ),
            ],
            repeatForever: true,
          ),
        ),
      ),
      bottomNavigationBar: ConvexAppBar(
        style: TabStyle.react,
        items: const [
          TabItem(icon: Icons.list),
          TabItem(icon: Icons.calendar_today),
          TabItem(icon: Icons.assessment),
        ],
        initialActiveIndex: 1,
        onTap: (int i) => print('click index=$i'),
      ),
    );
  }
}

const colorizeColors = [
  Color(0xFF381E73),
  Color(0xFF381E73),
  Color(0xFF5F479B),
  Color(0xFF381E73),
];

const colorizeTextStyle = TextStyle(
  fontSize: 30.0,
  fontFamily: 'Horizon',
);
