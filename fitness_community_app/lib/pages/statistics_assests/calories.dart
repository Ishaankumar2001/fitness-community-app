import 'package:flutter/material.dart';

class UserCalories extends StatelessWidget {
  const UserCalories({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    int set_calories = 141;
    int total_calories = 300;
    var calories_percent =
        (set_calories / total_calories * 100).toStringAsPrecision(4);
    return Container(
      margin: EdgeInsets.all(10.0),
      height: 130.0,
      width: size.height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        gradient: LinearGradient(colors: [
          Colors.lightBlueAccent.shade200,
          Colors.blueAccent.shade700
        ], begin: Alignment.topLeft, end: Alignment.bottomRight),
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
            "Calories",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
          ),
          Text(
            "$set_calories/$total_calories Kcal",
            style: TextStyle(fontSize: 20.0),
          ),
          Text(
            "Goal Completion: ${calories_percent}%",
            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w700),
          )
        ],
      ),
      padding: EdgeInsets.all(20.0),
    );
  }
}
