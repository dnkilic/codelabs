import 'dart:math';

class Rectangle {
  int width;
  int height;
  Point point;

  Rectangle({this.width = 0, this.height = 0, this.point = const Point(0, 0)});

  @override
  String toString() {
    return 'Origin: (${point.x}, ${point.y}), Width: $width, Height: $height';
  }

}