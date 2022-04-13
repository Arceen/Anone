import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class LaunchScreen extends StatefulWidget {
  const LaunchScreen({Key? key}) : super(key: key);

  @override
  State<LaunchScreen> createState() => _LaunchScreenState();
}

class _LaunchScreenState extends State<LaunchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("Anone"),
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
  Colors.purple,
  Colors.blue,
  Colors.yellow,
  Colors.red,
];

const colorizeTextStyle = TextStyle(
  fontSize: 50.0,
  fontFamily: 'Horizon',
);

// return SizedBox(
//   width: 250.0,
//   child: AnimatedTextKit(
//     animatedTexts: [
//       ColorizeAnimatedText(
//         'Larry Page',
//         textStyle: colorizeTextStyle,
//         colors: colorizeColors,
//       ),
//       ColorizeAnimatedText(
//         'Bill Gates',
//         textStyle: colorizeTextStyle,
//         colors: colorizeColors,
//       ),
//       ColorizeAnimatedText(
//         'Steve Jobs',
//         textStyle: colorizeTextStyle,
//         colors: colorizeColors,
//       ),
//     ],
//     isRepeatingAnimation: true,
//     onTap: () {
//       print("Tap Event");
//     },
//   ),
// );