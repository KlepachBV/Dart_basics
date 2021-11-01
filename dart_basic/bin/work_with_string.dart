class WorkWithString {
  static final Map _reserveWord = <String, int>{
    "zero": 0,
    "one": 1,
    "two": 2,
    "three": 3,
    "four": 4,
    "five": 5,
    "six": 6,
    "seven": 7,
    "eight": 8,
    "nine": 9
  };

  static Set<int> _findDigit(String str) {
    Set<int> result = {};
    for (var element in _reserveWord.keys) {
      if (str.contains(element)) {
        result.add(_reserveWord[element]);
      }
    }
    return result;
  }

  static List<num?> findNum(String str) {
    List<String> temp = str.split(" ");
    return ((temp.map((e) => num.tryParse(e))).where((e) => e != null))
        .toList();
  }

  static Map<String, int> countWords(List<String> list) {
    var result = <String, int>{};
    for (var e in list) {
      result[e] = result[e] ?? 0 + 1;
    }
    return result;
  }

  static List<Set<int>> findSetNum(List<String> lstr) {
    List<Set<int>> result = [];
    for (var e in lstr) {
      result.add(_findDigit(e));
    }
    return result;
  }
}
