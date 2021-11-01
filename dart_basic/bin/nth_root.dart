double userPow(num x, int n) {
  double result = 1;
  for (int j = 1; j <= n; j++) {
    result *= x;
  }
  return result;
}

extension NthRoot on num {
  double getNthRoot(int n) {
    num x = this;
    double eps = 1e-10;
    var x0 = x / n;
    var x1 = (1 / n) * ((n - 1) * x0 + x / userPow(x0, n - 1));

    while ((x1 - x0).abs() > eps) {
      x0 = x1;
      x1 = (1 / n) * ((n - 1) * x0 + x / userPow(x0, n - 1));
    }

    return x1;
  }
}
