import 'package:fitness_community_app/Class%20Files/workout_data.dart';
import 'package:fitness_community_app/UI/HomePage.dart';
import 'package:fitness_community_app/UI/workout_beginner.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:appbar_animated/appbar_animated.dart';

final List<String> all_workout_list = [
  'Chest',
  'Bisceps',
  'Back',
  'Shoulder',
  'Abs',
  'Leg',
  'Triceps',
];

class workout_description extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
   
    return SafeArea(
      
      child: Scaffold(
        body: ScaffoldLayoutBuilder(
          backgroundColorAppBar:
              const ColorBuilder(Colors.transparent, Colors.pink),
          textColorAppBar: const ColorBuilder(Colors.white),
          appBarHeight: 60,
          appBarBuilder: _appBar,
          child: SingleChildScrollView(
            child: Stack(
              children: [
                Image.asset(
                  "Assets/Icons/chest_photo.jpg",
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.4,
                  fit: BoxFit.cover,
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.36,
                  ),
                  height: 900,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(40),
                      ),
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
                      )),
                  padding: EdgeInsets.only(top: 50),
                  child: ListView.separated(
                    primary: false,
                    scrollDirection: Axis.vertical,
                    itemCount: chest.length,
                    itemBuilder: (BuildContext context, index) {
                      Chest data1= chest[index];

                      return Container(
                        margin: EdgeInsets.only(left: 20, right: 20),
                        height: 100,
                        width: 20,
                        //color: Colors.white24,
                        child: Row(
                          children: [
                            Image.asset(
                              data1.imageUrl,
                            ),
                            SizedBox(
                              width: 25,
                            ),
                            Text(
                              data1.name,
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            color: Colors.white),
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) =>
                        const Divider(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget _appBar(BuildContext context, ColorAnimated colorAnimated) {
  return AppBar(
    backgroundColor: colorAnimated.background,
    elevation: 0,
    title: Text(
      "Chest Workout",
      style: TextStyle(
        color: colorAnimated.color,
      ),
    ),
    leading: Icon(
      Icons.arrow_back_ios_new_rounded,
      color: colorAnimated.color,
    ),
    actions: [
      IconButton(
        onPressed: () {
          workout_beginner();
        },
        icon: Icon(
          Icons.favorite,
          color: colorAnimated.color,
        ),
      ),
    ],
  );
}