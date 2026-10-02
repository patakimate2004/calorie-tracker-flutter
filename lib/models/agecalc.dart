import 'package:flutter_application_1/models/user.dart';

int calculateAge(User user){
  var difference = DateTime.now().difference(user.birthDate);
  int age = difference.inDays ~/ 365;

  return age;
}