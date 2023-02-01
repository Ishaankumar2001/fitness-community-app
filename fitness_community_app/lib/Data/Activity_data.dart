import 'package:flutter/material.dart';

class TA {
  String? value;

  TA({this.value});
}

List<TA> ta = [
  TA(
    value: '1,228',
  ),
  TA(
    value: '829',
  ),
  TA(
    value: '88',
  )
];

final genShadow = [
  BoxShadow(
      color: Color(0xff5563de).withOpacity(0.2),
      offset: Offset(5.0, 5.0),
      blurRadius: 15.0,
      spreadRadius: 1.0),
  BoxShadow(
      color: Color(0xFFF8FFFF),
      offset: Offset(-5.0, -5.0),
      blurRadius: 15.0,
      spreadRadius: 1.0),
];
final pressedShadow = [
  BoxShadow(
      color: Colors.black.withOpacity(.15),
      spreadRadius: 2,
      offset: Offset(-1, 1)),
  BoxShadow(
      color: Colors.white.withOpacity(.7),
      spreadRadius: 2,
      offset: Offset(1, -1)),
  BoxShadow(
      color: Colors.black.withOpacity(.15),
      spreadRadius: 2,
      offset: Offset(-1, -1)),
  BoxShadow(
      color: Colors.white.withOpacity(.7),
      spreadRadius: 2,
      offset: Offset(1, 1)),
];
