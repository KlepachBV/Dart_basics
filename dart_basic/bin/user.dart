abstract class User {
  String email;

  User(this.email);

  String display();
}

class AdminUser extends User with Mail {
  AdminUser(String email) : super(email);
  @override
  String display() {
    return getMailSystem(email);
  }
}

class GeneralUser extends User {
  GeneralUser(String email) : super(email);

  @override
  String display() {
    return email;
  }
}

mixin Mail on User {
  String getMailSystem(String str) {
    return str.substring(str.indexOf("@") + 1, str.length);
  }
}

class UserManager<T extends User> {
  List<T> users = [];

  void addUser(T us) {
    users.add(us);
  }

  void delUser(T us) {
    users.remove(us);
  }

  void printUsers() {
    users.forEach((element) {
      print(element.display());
    });
  }
}
