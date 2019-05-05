import 'dart:math';
import 'package:intro_to_dart/shape/shape.dart';

class Circle implements Shape {
  final num radius;
  Circle(this.radius);
  num get area => 2 * pi * radius;
}