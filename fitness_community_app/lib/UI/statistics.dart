import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

import 'package:fitness_community_app/pages/statistics_assests/calories.dart';
import 'package:fitness_community_app/pages/statistics_assests/distances.dart';
import 'package:fitness_community_app/pages/statistics_assests/heart_rate.dart';
import 'package:fitness_community_app/pages/statistics_assests/sleep.dart';
import 'package:fitness_community_app/pages/statistics_assests/steps.dart';



class UserStatistics extends StatefulWidget {
  const UserStatistics({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => _UserStatisticsState();
}

class _UserStatisticsState extends State<UserStatistics> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Statistics'),
        backgroundColor: Colors.pink,
      ),
      body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          physics: BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.all(16),
                child: Text(
                  "Daily Activity",
                  style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.w800),
                ),
              ),
              Container(
                padding: EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new CircularPercentIndicator(
                      radius: 40.0,
                      animation: true,
                      animationDuration: 1600,
                      lineWidth: 8.0,
                      percent: 0.60,
                      center: new Icon(
                        Icons.run_circle,
                        size: 50.0,
                        color: Colors.pink,
                      ),
                      footer: Text(
                        "Steps",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16.0),
                      ),
                      circularStrokeCap: CircularStrokeCap.round,
                      progressColor: Colors.pink.shade400,
                    ),
                    SizedBox(
                      width: 35.0,
                    ),
                    new CircularPercentIndicator(
                      radius: 40.0,
                      animation: true,
                      animationDuration: 1300,
                      lineWidth: 8.0,
                      percent: 0.51,
                      center: new Icon(
                        Icons.person_pin,
                        size: 50.0,
                        color: Colors.pink,
                      ),
                      footer: Text(
                        "Distance",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16.0),
                      ),
                      circularStrokeCap: CircularStrokeCap.round,
                      progressColor: Colors.pink.shade400,
                    ),
                    SizedBox(
                      width: 35.0,
                    ),
                    new CircularPercentIndicator(
                      radius: 40.0,
                      animation: true,
                      animationDuration: 1000,
                      lineWidth: 8.0,
                      percent: 0.47,
                      center: new Icon(
                        Icons.fireplace_sharp,
                        size: 40.0,
                        color: Colors.pink,
                      ),
                      footer: Text(
                        "Calories",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16.0),
                      ),
                      circularStrokeCap: CircularStrokeCap.round,
                      progressColor: Colors.pink.shade400,
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 25.0),
                decoration: BoxDecoration(
                  color: Colors.pink.shade400,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20.0),
                    topLeft: Radius.circular(20.0),
                  ),
                ),
                child: Column(
                  children: [
                    UserSteps(),
                    UserDistance(),
                    UserCalories(),
                    UserHeartRate(),
                    UserSleep(),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
