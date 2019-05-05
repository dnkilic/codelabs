import 'package:intro_to_dart/shape/circle.dart';
import 'package:intro_to_dart/shape/square.dart';

abstract class Shape {
  factory Shape(String type) {
    if (type == 'circle') return Circle(2);
    if (type == 'square') return Square(2);
    throw 'can\'t create $type';
  }

  num get area;
}