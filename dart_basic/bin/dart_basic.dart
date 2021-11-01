import 'delimeters_calculator.dart';
import 'work_with_string.dart';
import 'translator.dart';
import 'point.dart';
import 'nth_root.dart';
import 'user.dart';

void main(List<String> arguments) {
  Point first = Point(1, 1, 2);
  Point second = Point(5, 1, 2);
  Point third = Point(3, 3, 2);
  print(DelimetersCalculator.gcd(115, 45));
  print(DelimetersCalculator.lcm(115, 45));
  print(DelimetersCalculator.factorize(115));
  print(first.distanceTo(second));
  print(first.areaTriangle(second, third));
  print(Translator.Translate(1111110, 2));
  print(Translator.Translate(126, 10));
  print(WorkWithString.findNum("jbhg 11 jbjhbhjf 65 588 69"));
  print(WorkWithString.countWords(
      "With null-safety the old removeWhere solution does no longer work, if the type of the resulting list is to be non-nullable. Casting after removeWhere doesn't work as well"
          .split(" ")));
  print(WorkWithString.findSetNum(
      ["one, two, zero, zero", "one, two, three, cat, dog"]));
  num x = 34;
  print(x.getNthRoot(5));

  UserManager manager = UserManager();
  AdminUser admin1 = AdminUser("admin1@list.ru");
  AdminUser admin2 = AdminUser("admin2@mail.ru");
  GeneralUser gUser1 = GeneralUser("ivan@mail.ru");
  GeneralUser gUser2 = GeneralUser("jake@gmail.cim");
  manager.addUser(admin1);
  manager.addUser(gUser1);
  manager.printUsers();
  print("-------");
  manager.addUser(admin2);
  manager.addUser(gUser2);
  manager.printUsers();
  print("-------");
  manager.delUser(admin2);
  manager.printUsers();
}
