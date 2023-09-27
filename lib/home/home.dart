import 'package:flutter/material.dart';
import 'package:kabengo/about/about.dart';
import 'package:kabengo/contact/contacts.dart';
import 'package:kabengo/get_to_know/getToKnow.dart';
import 'package:kabengo/home/homeContents.dart';
import 'package:kabengo/kilimanjaro/kilimanjaro.dart';
import 'package:kabengo/ventures/ventures.dart';
import 'package:kabengo/voyage/voyage.dart';
import 'package:kabengo/widgets/headingOne.dart';
import 'package:kabengo/zanziibar/zanzibar.dart';

import '../constants/colors.dart';
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 8,
        child: Scaffold(
          appBar: AppBar(
            elevation: 7,
            backgroundColor: backgroundThemeColor,
            title: HeadingOne(headingOne: "Kabengo Safaris"),
            centerTitle: true,
            bottom: TabBar(
              indicatorColor: foregroundThemeColor,
              isScrollable: true,
              labelColor: foregroundThemeColor,
              unselectedLabelColor: Colors.black,
              tabs: [
                Tab(text: 'Home'),
                Tab(text: 'Voyage'),
                Tab(text: 'Kilimanjaro'),
                Tab(text: 'Zanzibar'),
                Tab(text: 'Get To Know'),
                Tab(text: 'Ventures'),
                Tab(text: 'Contact Us'),
                Tab(text: 'About Us'),
              ]
            ),
          ),
          backgroundColor: backgroundThemeColor,
          body: TabBarView(
            physics: BouncingScrollPhysics(),
            children: [
              const HomeContents(),
              const Voyage(),
              const Kilimanjaro(),
              const Zanzibar(),
              const GetToKnow(),
              const Ventures(),
              const Contacts(),
              const About(),
            ]
          ),
        ),
      ),
    );
  }
}