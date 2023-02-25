import 'package:fitness_community_app/UI/BMI.dart';
import 'package:fitness_community_app/UI/HomePage.dart';
import 'package:fitness_community_app/UI/workout_description.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Workout {
  String name;

  Workout({
    required this.name,
  });
}

final List<Workout> workout = [
  Workout(
    name: 'Chest',
  ),
  Workout(
    name: 'Bisceps',
  ),
  Workout(
    name: 'Back',
  ),
  Workout(
    name: 'Shoulder',
  ),
  Workout(
    name: 'Abs',
  ),
  Workout(
    name: 'Leg',
  ),
  Workout(
    name: 'Triceps',
  ),
  Workout(
    name: 'Triceps',
  ),
];

class workout_beginner extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _workout_beginner_State();
}

class _workout_beginner_State extends State<workout_beginner> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Workout"),
        backgroundColor: Colors.pink,
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
            ),
          ),
          child: SafeArea(
            child: Container(
              padding: EdgeInsets.only(top: 20),
              margin: EdgeInsets.only(left: 15, right: 15),
              child: GridView.builder(
                itemCount: workout.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 4.0,
                    mainAxisSpacing: 4.0),
                itemBuilder: (BuildContext context, int index) {
                  Workout workout1 = workout[index];

                  return InkWell(
                    child: Container(
                      height: 10,
                      width: 20,
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.4),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                          child: Text(
                        workout1.name,
                        style: TextStyle(fontSize: 24, color: Colors.white),
                      )),
                    ),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return workout_description();
                      }));
                    },
                  );
                },
              ),
            ),
          )),
    );
  }
}