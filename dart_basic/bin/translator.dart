class Translator {
  static int _fromTwoToTen(int num) {
    int result = 0;
    int degree = 1;
    while (num != 0) {
      result += num % 10 * degree;
      degree *= 2;
      num ~/= 10;
    }
    return result;
  }

  static int _fromTentoTwo(int num) {
    int result = 0;
    int degree = 1;
    while (num != 0) {
      result += num % 2 * degree;
      num ~/= 2;
      degree *= 10;
    }
    return result;
  }

  static bool _checkErrorInput(int num, int base) {
    while (num != 0) {
      if (num % 10 >= base) {
        return true;
      }
      num ~/= 10;
    }
    return false;
  }

  static int Translate(int num, int base) {
    if (_checkErrorInput(num, base)) {
      throw new ArgumentError("Digit is more then Base");
    }
    if (base == 2) {
      return _fromTwoToTen(num);
    } else if (base == 10) {
      return _fromTentoTwo(num);
    } else {
      throw new ArgumentError("Base can be 2 or 10");
    }
  }
}
