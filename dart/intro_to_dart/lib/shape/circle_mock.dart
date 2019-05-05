import 'package:intro_to_dart/shape/circle.dart';

// Even though the CircleMock class doesn't define any behaviors, it's valid Dart—the analyzer raises no errors.
class CircleMock implements Circle {
  num area;
  num radius;
}