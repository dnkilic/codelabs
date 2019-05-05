import 'dart:math';
import 'package:intro_to_dart/shape/shape.dart';

class Square implements Shape {
  final num side;
  Square(this.side);
  num get area => pow(side, 2);
}