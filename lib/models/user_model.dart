class UserModel {
  final String fullName;
  final String company;
  final int age;

  UserModel({required this.fullName, required this.company, required this.age});
  static Map<String, dynamic> toMap(UserModel u) {
    Map<String, dynamic> user = {
      'fullName': u.fullName,
      'company': u.company,
      'age': u.age
    };
    return user;
  }
}
