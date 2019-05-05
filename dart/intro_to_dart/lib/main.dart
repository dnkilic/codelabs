import 'dart:math';

import 'package:intro_to_dart/rectangle.dart';
import 'package:intro_to_dart/bicycle.dart';
import 'package:intro_to_dart/shape/circle.dart';
import 'package:intro_to_dart/shape/shape.dart';
import 'package:intro_to_dart/shape/square.dart';

// top level function declaration
Shape shapeFactory(String type) {
  if (type == 'circle') return Circle(2);
  if (type == 'square') return Square(2);
  throw 'can\'t create $type';
}

void main() {
  // optional new keyword in Dart 2
  // var bike = new Bicycle(2, 0, 1);
  var bike = Bicycle(2, 1);
  print(bike);

  print(Rectangle(width: 100, height: 200, point: Point(10, 20)));
  print(Rectangle(point: Point(10, 10)));
  print(Rectangle(width: 200));
  print(Rectangle());

  final circle = Circle(2);
  final square = Square(3);
  print(circle.area);
  print(square.area);

  final circleFromTopLevelFunction = shapeFactory('circle');
  final squareFromTopLevelFunction = shapeFactory('square');
  print(circleFromTopLevelFunction.area);
  print(squareFromTopLevelFunction.area);

  final circleFromFactoryMethod = Shape('circle');
  final squareFromFactoryMethod = Shape('square');
  print(circleFromFactoryMethod.area);
  print(squareFromFactoryMethod.area);

  // Imperative Code
  String scream(int length) => "A${'a' * length}h!";
  final values = [1, 2, 3, 5, 10, 50];
  for (var length in values) {
    print(scream(length));
  }

  // Functional Code
  values.map(scream).forEach(print);
  values.skip(1).take(3).map(scream).forEach(print);
}