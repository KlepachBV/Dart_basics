class DelimetersCalculator {
  static int gcd(int x, int y) {
    return (y > 0 ? gcd(y, x % y) : x);
  }

  static int lcm(int x, int y) {
    return ((x ~/ gcd(x, y)) * y);
  }

  static List<int> factorize(int x) {
    int curfactor = 2;
    List<int> result = [];
    while (x > 1) {
      if (x % curfactor == 0) {
        result.add(curfactor);
        x ~/= curfactor;
      } else {
        curfactor++;
      }
    }
    return result;
  }
}
