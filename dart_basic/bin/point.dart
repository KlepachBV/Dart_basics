import 'dart:math';

class Point {
  double x;
  double y;
  double z;

  static Point zeroPoint = Point(0, 0, 0);
  static Point unitPoint = Point(1, 1, 1);
  static Point basisX = Point(1, 0, 0);
  static Point basisY = Point(0, 1, 0);
  static Point basisZ = Point(0, 0, 1);

  Point.createPoint(this.x, this.y, this.z);

  factory Point(double x, double y, double z) {
    if (x == 0 && y == 0 && z == 0) {
      return zeroPoint;
    } else if (x == 1 && y == 1 && z == 1) {
      return unitPoint;
    } else if (x == 1 && y == 0 && z == 0) {
      return basisX;
    } else if (x == 0 && y == 1 && z == 0) {
      return basisY;
    } else if (x == 0 && y == 0 && z == 1) {
      return basisZ;
    } else {
      return Point.createPoint(x, y, z);
    }
  }

  double distanceTo(Point two) {
    return sqrt(pow(this.x - two.x, 2) +
        pow(this.y - two.y, 2) +
        pow(this.z - two.z, 2));
  }

  double areaTriangle(Point two, Point three) {
    double a = this.distanceTo(two);
    double b = this.distanceTo(three);
    double c = two.distanceTo(three);
    double p = (a + b + c) / 2;
    return sqrt(p * (p - a) * (p - b) * (p - c));
  }
}
