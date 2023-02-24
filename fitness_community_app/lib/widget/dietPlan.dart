import 'dart:ui';

import 'package:flutter/material.dart';



class Diet {
  String imageUrl;
  String name;
  

  Diet({
    required this.imageUrl,
    required this.name,
   
  });
}

final List<Diet> diet = [
  Diet(
    imageUrl: 'Assets/Icons/chest.jpg',
    name: 'Chest',
    
  ),
  Diet(
    imageUrl: 'Assets/Icons/shoulder.jpg',
    name: 'Bisceps',
    
  ),
  Diet(
      imageUrl: 'Assets/Icons/shoulder.jpg',
      name: 'Back',
  ),
];


class dietPlan extends StatefulWidget {
  const dietPlan({super.key});

  @override
  State<dietPlan> createState() => _dietPlanState();
}

class _dietPlanState extends State<dietPlan> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 18),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "Diet Plan",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 0.8),
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
            height: 200,
            width: 200,
            padding: EdgeInsets.only(
              top: 8,
            ),
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}
