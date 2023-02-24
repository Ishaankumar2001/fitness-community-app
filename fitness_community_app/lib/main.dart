import 'package:fitness_community_app/UI/HomePage.dart';
import 'package:fitness_community_app/UI/WorkoutScreen.dart';
import 'package:fitness_community_app/UI/statistics.dart';
import 'package:fitness_community_app/UI/BMI.dart';
import 'package:fitness_community_app/UI/workout_beginner.dart';
import 'package:fitness_community_app/widget/navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Fitness Community App",
      theme: ThemeData(
        primarySwatch: Colors.grey,
        focusColor: Colors.white,
      ),
      home: home(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _homeState();
}

class _homeState extends State<home> {
  int currentIndex = 0;

  void _navigateBottomBar(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  final List<Widget> _pages = [
    HomePage(),
    workout_beginner(),
    BMI(),
    UserStatistics(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromARGB(255, 216, 23, 87),

        type: BottomNavigationBarType.fixed,
        elevation: 0,
        //backgroundColor: Colors.blue,
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        iconSize: 20,

        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: "Home",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.sports_gymnastics), label: "Workout"),
          BottomNavigationBarItem(icon: Icon(Icons.pages), label: "Feed"),
          BottomNavigationBarItem(
              icon: Icon(Icons.bar_chart), label: "Statistics"),
        ],
      ),
    );
  }
}
