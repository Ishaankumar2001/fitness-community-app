import 'dart:ui';

import 'package:fitness_community_app/UI/BMI.dart';
import 'package:fitness_community_app/widget/dietPlan.dart';
import 'package:fitness_community_app/widget/popularExercise.dart';
import 'package:fitness_community_app/widget/todayActivity.dart';
import 'package:flutter/cupertino.dart';
import 'package:fitness_community_app/widget/navigation_bar.dart';
import 'package:fitness_community_app/widget/showCaseBanner.dart';
import 'package:fitness_community_app/widget/dietPlan.dart';
import 'package:fitness_community_app/UI/WorkoutScreen.dart';
import 'package:fitness_community_app/Data/Activity_data.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        elevation: 0,
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage("Assets/Icons/profile.png"),
              radius: 30,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 65,
                ),
                Text(
                  "Hello",
                  style: TextStyle(
                      color: Colors.white.withOpacity(0.8),
                      fontSize: 15,
                      letterSpacing: 1.2),
                ),
                Text(
                  "Shyam",
                  style: TextStyle(
                      color: Colors.white, fontSize: 15, letterSpacing: 1.2),
                ),
              ],
            ),
          ],
        ),
        backgroundColor: Colors.pink,
        actions: <Widget>[
          Row(
            // mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return BMI();
                  }));
                },
                child: FaIcon(
                  FontAwesomeIcons.calculator,
                  color: Colors.white,
                  size: 25,
                ),
              ),
              Padding(padding: EdgeInsets.all(6)),
              FaIcon(
                FontAwesomeIcons.facebookMessenger,
                color: Colors.white,
                size: 25,
              ),
              Padding(padding: EdgeInsets.all(6)),
              FaIcon(
                FontAwesomeIcons.solidBell,
                color: Colors.white,
                size: 25,
              ),
              Padding(padding: EdgeInsets.all(6)),
            ],
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          stops: [
            0.1,
            0.4,
            0.6,
            0.9,
          ],
          colors: [
            Colors.pink,
            Color.fromARGB(234, 223, 76, 8),
            Color.fromARGB(224, 219, 147, 13),
            Colors.pink,
          ],
        )),
        child: SafeArea(
            child: Container(
          margin: EdgeInsets.only(left: 13, right: 13, top: 12),
          child: ListView(
            children: <Widget>[
              SliderScreen(),
              Padding(
                padding: EdgeInsets.only(top: 10),
              ),
              todayActivity(),
              popularExercise(),
              dietPlan(),
            ],
          ),
        )),
      ),
      // bottomNavigationBar: navigationBar(),
    );
  }
}
