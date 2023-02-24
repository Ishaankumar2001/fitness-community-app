import 'package:flutter/material.dart';

class UserSleep extends StatelessWidget {
  const UserSleep({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    int sleep_hours = 6;
    int sleep_mins = 17;
    double sleep_score = 81;
    return Container(
      margin: EdgeInsets.all(10.0),
      height: 130.0,
      width: size.height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        gradient: LinearGradient(
            colors: [Colors.yellow.shade300, Colors.yellowAccent.shade700],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 15.0,
            width: 15.0,
            decoration: BoxDecoration(
                shape: BoxShape.circle, color: Colors.lime.shade900),
          ),
          Padding(
            padding: EdgeInsets.all(5.0),
          ),
          Text(
            "Sleep",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
          ),
          Text(
            "${sleep_hours}H-${sleep_mins}Min",
            style: TextStyle(fontSize: 20.0),
          ),
          Text(
            "Sleep Scores: ${sleep_score}/100.0",
            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w700),
          )
        ],
      ),
      padding: EdgeInsets.all(20.0),
    );
  }
}
