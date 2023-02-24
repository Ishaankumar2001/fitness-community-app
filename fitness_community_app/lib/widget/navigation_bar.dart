import 'dart:ui';
import 'package:fitness_community_app/widget/navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class navigationBar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => navigationBarState();
}

class navigationBarState extends State<navigationBar> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      
        
          backgroundColor: Color.fromARGB(248, 206, 195, 195),
          
           type: BottomNavigationBarType.fixed,
            elevation: 0,
      //backgroundColor: Colors.blue,
      currentIndex: currentIndex,
      onTap: (index) => setState(() => currentIndex = index),
      iconSize: 30,
      
      
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "Home",),
        BottomNavigationBarItem(
            icon: Icon(Icons.sports_gymnastics), label: "Workout"),
        BottomNavigationBarItem(
            icon: Icon(Icons.pages), label: "Feed"),
            BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart), label: "Statistics"),
            
            
      ],
      
      
      
      
    );
  }
}
