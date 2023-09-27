import 'package:flutter/material.dart';
import 'package:kabengo/constants/colors.dart';
import 'home/home.dart';

void main(List<String> args) {
  runApp(const Kabengo());
}

class Kabengo extends StatelessWidget {
  const Kabengo({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kabengo Safaris',
      theme: ThemeData(
        fontFamily: 'Georgia',
        primaryColor: backgroundThemeColor,
      ),
      debugShowCheckedModeBanner: false,
      home: DelayedHome(),
    );
  }
}

class DelayedHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Future.delayed(Duration(milliseconds: 1500)),
      builder: (context, snapshot) {
        return Home();
        // if (snapshot.connectionState == ConnectionState.waiting) {
        //   // While waiting for the delay to complete, you can show a loading indicator
        //   return Scaffold(
        //     backgroundColor: backgroundThemeColor,
        //     body: Center(
        //       child: CircularProgressIndicator(
        //         color: foregroundThemeColor,
        //       ),
        //     ),
        //   );
        // } else {
        //   // Once the delay is complete, navigate to the Home widget
        //   return Home();
        // }
      },
    );
  }
}
