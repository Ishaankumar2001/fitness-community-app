import 'package:flutter/material.dart';

class UserSteps extends StatelessWidget {
  const UserSteps({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    int current_steps = 4200;
    int total_steps = 7000;
    var steps_percent =
        (current_steps / total_steps * 100).toStringAsPrecision(4);
    return Container(
      margin: EdgeInsets.all(10.0),
      height: 130.0,
      width: size.height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        gradient: LinearGradient(
            colors: [Colors.orange.shade400, Colors.deepOrange],
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
                shape: BoxShape.circle, color: Colors.amber.shade900),
          ),
          Padding(
            padding: EdgeInsets.all(5.0),
          ),
          Text(
            "Steps",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
          ),
          Text(
            "$current_steps/$total_steps",
            style: TextStyle(fontSize: 20.0),
          ),
          Text(
            "Goal Completion: ${steps_percent}%",
            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w700),
          )
        ],
      ),
      padding: EdgeInsets.all(20.0),
    );
  }
}
