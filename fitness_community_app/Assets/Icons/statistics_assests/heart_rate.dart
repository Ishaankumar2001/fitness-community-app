import 'package:flutter/material.dart';

class UserHeartRate extends StatelessWidget {
  const UserHeartRate({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    int min_rate = 74;
    int max_rate = 102;
    var avg_rate = (min_rate / max_rate * 100).toStringAsPrecision(2);
    return Container(
      margin: EdgeInsets.all(10.0),
      height: 130.0,
      width: size.height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        gradient: LinearGradient(
            colors: [Colors.redAccent.shade200, Colors.redAccent.shade700],
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
                shape: BoxShape.circle, color: Colors.red.shade900),
          ),
          Padding(
            padding: EdgeInsets.all(5.0),
          ),
          Text(
            "Heart Rate",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
          ),
          Text(
            "$min_rate-$max_rate bpm",
            style: TextStyle(fontSize: 20.0),
          ),
          Text(
            "Average: ${avg_rate} bpm",
            style: TextStyle(fontSize: 20.0),
          ),
        ],
      ),
      padding: EdgeInsets.all(20.0),
    );
  }
}
