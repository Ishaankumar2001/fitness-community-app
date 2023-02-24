import 'dart:ui';

import 'package:flutter/material.dart';

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
    name: 'Chest',
    
  ),
  Exercise(
    imageUrl: 'Assets/Icons/biceps1.PNG',
    name: 'Bisceps',
    
  ),
  Exercise(
      imageUrl: 'Assets/Icons/back.jpg',
      name: 'Back',
  ),
];

class popularExercise extends StatefulWidget {
  const popularExercise({super.key});

  @override
  State<popularExercise> createState() => _popularExerciseState();
}

class _popularExerciseState extends State<popularExercise> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 18),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "Popular Exercise",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 0.8,color: Colors.white),
              ),
              Expanded(child: SizedBox()),
              Padding(
                padding: EdgeInsets.all(20),
              ),
              SelectableText(
                "Details",
                style: TextStyle(
                    color: Colors.deepPurple, fontSize: 18, letterSpacing: 0.5),
              ),
              Icon(
                Icons.arrow_forward_sharp,
                color: Colors.deepPurple,
              )
            ],
          ),
          Container(
            height: 250,
            padding: EdgeInsets.only(
              top: 8,
            ),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: exercise.length,
              itemBuilder: (BuildContext context, index) {
                Exercise exercise1 = exercise[index];

                return Container(
                  width: 195,
                  margin: EdgeInsets.only(right: 12, left: 5),
                  
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
                          child: Image.asset(
                           exercise1.imageUrl,
                            height: 250.0,
                            width: 200.0,
                            fit: BoxFit.cover,
                          ),
                        ),

                        Container(
                          
                          alignment: Alignment.bottomCenter,
                          
                          child: Text(exercise1.name,
                          style: TextStyle(color: Colors.white,fontSize: 30,letterSpacing: 1
                          ),
                          ))
                      ],

                      //
                    ),

                  
                );

              },
            ),
          ),
        ],
      ),
    );
  }
}
