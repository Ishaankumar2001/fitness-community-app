import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:fitness_community_app/widget/navigation_bar.dart';
import 'package:fitness_community_app/UI/WorkoutScreen.dart';
import 'package:fitness_community_app/Data/Activity_data.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return app_bar();
  }
}

class app_bar extends StatefulWidget {
  @override
  State<app_bar> createState() => _app_bar();
}

class _app_bar extends State<app_bar> {
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
                      color: Colors.black.withOpacity(0.6), fontSize: 15),
                ),
                Text(
                  "Rahul",
                  style: TextStyle(color: Colors.black, fontSize: 15),
                ),
              ],
            ),
          ],
        ),
        backgroundColor: Colors.white,
        actions: <Widget>[
          Row(
            // mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset(
                "Assets/Icons/messenger.png",
                height: 30,
                width: 30,
              ),
              Padding(padding: EdgeInsets.all(6)),
              FaIcon(
                FontAwesomeIcons.bell,
                color: Colors.black,
                size: 25,
              ),
              Padding(padding: EdgeInsets.all(6)),
            ],
          ),
        ],
      ),
      body: home_content(),
      bottomNavigationBar: navigationBar(),
    );
  }
}

class home_content extends StatefulWidget {
  @override
  State<home_content> createState() => _home_content_state();
}

class _home_content_state extends State<home_content> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Container(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                padding: EdgeInsets.only(top: 15, bottom: 25),
                child: Container(
                  height: 180,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
              Row(
                  
                children: [
                  Text(
                    "Today's Activity",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0.8),
                  ),
                  Expanded(child: SizedBox()),
                  Padding(
                    padding: EdgeInsets.all(20),
                  ),
                  SelectableText(
                    "Details",
                    style: TextStyle(
                        color: Colors.deepPurple,
                        fontSize: 18,
                        letterSpacing: 0.5),
                    onTap: () {
                      WorkoutScreen();
                    },
                  ),
                  Icon(
                    Icons.arrow_forward_sharp,
                    color: Colors.deepPurple,
                  )
                ],
              ),
              Container(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.only(top: 10, right: 20, bottom: 15),
                  children: [
                    Stack(
                      children: [
                        buildCardActivity(),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Image.asset(
                                "Assets/Icons/heartbeat.png",
                                height: 65,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Heart Rate",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red),
                            ),
                          ],
                        ),

                        //
                      ],
                    ),
                    SizedBox(width: 12),
                    Stack(
                      children: [
                        buildCardActivity(),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 15, top: 10),
                              child: Image.asset(
                                "Assets/Icons/sleep.png",
                                height: 40,
                              ),
                            ),
                            SizedBox(
                              width: 7,
                            ),
                            Text(
                              "Sleep",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 55, 39, 201)),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(width: 12),
                    Stack(
                      children: [
                        buildCardActivity(),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 15, top: 10),
                              child: Image.asset(
                                "Assets/Icons/calories.png",
                                height: 40,
                              ),
                            ),
                            SizedBox(
                              width: 7,
                            ),
                            Text(
                              "Calories",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 240, 136, 17)),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(width: 12),
                    buildCardActivity(),
                  ],
                ),
              ),
              Row(
                children: const [
                  Text(
                    "Popular Exercise",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0.8),
                  ),
                  Expanded(child: SizedBox()),
                  Padding(
                    padding: EdgeInsets.all(20),
                  ),
                  Text(
                    "Details",
                    style: TextStyle(
                        color: Colors.deepPurple,
                        fontSize: 18,
                        letterSpacing: 0.5),
                  ),
                  Icon(
                    Icons.arrow_forward_sharp,
                    color: Colors.deepPurple,
                  )
                ],
              ),
              Container(
                height: 250,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.only(top: 10, right: 20, bottom: 15),
                  children: [
                    Stack(
                      children: [
                        buildCardExercise(),
                        const Padding(
                          padding: EdgeInsets.only(top: 50, left: 30),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(18),
                          child: Image.asset(
                            "Assets/Icons/chest.jpg",
                            height: 250.0,
                            width: 200.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],

                      //
                    ),
                    SizedBox(width: 12),
                    buildCardExercise(),
                    SizedBox(width: 12),
                    buildCardExercise(),
                    SizedBox(width: 12),
                    buildCardExercise(),
                  ],
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}

Widget buildCardActivity() => Container(
      height: 200,
      width: 190,
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.4),
        borderRadius: BorderRadius.circular(20),
        //boxShadow: BoxShadow(color: Clors.black),
      ),
    );

Widget buildCardExercise() => Container(
      height: 250,
      width: 200,
      decoration: BoxDecoration(
        color: Colors.purple,

        borderRadius: BorderRadius.circular(20),
        //boxShadow: BoxShadow(color: Clors.black),
      ),

      // child: Image.asset(
      //   "Assets/Icons/chest.jpg",
      //   fit: BoxFit.cover,
      // ),
    );
