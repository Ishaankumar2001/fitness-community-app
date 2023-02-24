import 'package:fitness_community_app/UI/HomePage.dart';
import 'package:fitness_community_app/UI/workout_beginner.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Exercise {
  String imageUrl;
  String name;

  Exercise({
    required this.imageUrl,
    required this.name,
  });
}

final List<Exercise> exercise = [
  Exercise(
    imageUrl: 'Assets/Icons/chest.jpg',
    name: 'Beginner',
  ),
  Exercise(
    imageUrl: 'Assets/Icons/shoulder.jpg',
    name: 'Intermidate',
  ),
  Exercise(
    imageUrl: 'Assets/Icons/shoulder.jpg',
    name: 'Advanced',
  ),
];

class WorkoutScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _WorkoutScreenState();
}

class _WorkoutScreenState extends State<WorkoutScreen> {
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
          alignment: Alignment.center,
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: exercise.length,
            itemBuilder: (BuildContext context, index) {
              Exercise exercise1 = exercise[index];

              return InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return workout_beginner();
                  }));
                },
                child: Container(
                  alignment: Alignment.center,
                  width: 150,
                  height: 150,
                  margin: EdgeInsets.only(right: 20, left: 20, top: 20),
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.4),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Stack(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 50, left: 30),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(18),
                      ),
                      Container(
                          alignment: Alignment.center,
                          child: Text(
                            exercise1.name,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1),
                          ))
                    ],

                    //
                  ),
                ),
              );
            },
          ),
        )),
      ),
    );
  }
}
