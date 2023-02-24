import 'dart:ui';

import 'package:fitness_community_app/UI/statistics.dart';
import 'package:flutter/material.dart';

class Activity {
  String imageUrl;
  String name;
  String value;
  Color color;

  Activity({
    required this.imageUrl,
    required this.name,
    required this.value,
    required this.color,
  });
}

final List<Activity> activity = [
  Activity(
    imageUrl: 'Assets/Icons/heartbeat.png',
    name: 'Heart Rate',
    value: '73 BPM',
    color: Colors.red,
  ),
  Activity(
    imageUrl: 'Assets/Icons/sleep.png',
    name: 'Sleep',
    value: '6H-17Min',
    color: Color.fromARGB(255, 55, 39, 201),
  ),
  Activity(
      imageUrl: 'Assets/Icons/calories.png',
      name: 'Calories',
      value: '141 Kcal',
      color: Color.fromARGB(255, 240, 136, 17)),
];

class todayActivity extends StatefulWidget {
  const todayActivity({super.key});

  @override
  State<todayActivity> createState() => _todayActivityState();
}

class _todayActivityState extends State<todayActivity> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 15),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "Today's Activity",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 0.8),
              ),
              Expanded(child: SizedBox()),
              Padding(
                padding: EdgeInsets.all(20),
              ),
              SelectableText(
                "See All",
                style: TextStyle(
                    color: Colors.deepPurple, fontSize: 18, letterSpacing: 0.5),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return UserStatistics();
                  }));
                },
              ),
              Icon(
                Icons.arrow_forward_sharp,
                color: Colors.deepPurple,
              )
            ],
          ),
          Container(
            height: 120,
            padding: EdgeInsets.only(
              top: 8,
            ),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: activity.length,
              itemBuilder: (BuildContext context, index) {
                Activity activity1 = activity[index];

                return Container(
                  width: 195,
                  margin: EdgeInsets.only(right: 12, left: 5),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.white.withOpacity(0.3)),
                  ),
                  child: Stack(
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 20, top: 5),
                                child: Image.asset(
                                  activity1.imageUrl,
                                  height: 40,
                                ),
                              ),
                              SizedBox(
                                width: 7,
                              ),
                              Text(
                                activity1.name,
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: activity1.color),
                              ),
                            ],
                          ),
                          Text(
                            activity1.value,
                            style: TextStyle(
                                fontSize: 23,
                                color: activity1.color,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
