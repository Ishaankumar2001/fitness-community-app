import 'package:flutter/material.dart';

class UserDistance extends StatelessWidget {
  const UserDistance({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double current_dist = 2.55;
    double total_dist = 5.0;
    var dist_percent = (current_dist / total_dist * 100).toStringAsPrecision(4);
    return Container(
      margin: EdgeInsets.all(10.0),
      height: 130.0,
      width: size.height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        gradient: LinearGradient(
            colors: [Colors.blueAccent.shade700, Colors.lightBlue.shade300],
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
                shape: BoxShape.circle, color: Color.fromARGB(255, 3, 72, 190)),
          ),
          Padding(
            padding: EdgeInsets.all(5.0),
          ),
          Text(
            "Distance",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
          ),
          Text(
            "$current_dist/$total_dist Km",
            style: TextStyle(fontSize: 20.0),
          ),
          Text(
            "Goal Completion: ${dist_percent}%",
            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w700),
          )
        ],
      ),
      padding: EdgeInsets.all(20.0),
    );
  }
}
