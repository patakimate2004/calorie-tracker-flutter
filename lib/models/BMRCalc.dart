import 'package:flutter_application_1/models/agecalc.dart';
import 'package:flutter_application_1/models/user.dart';
import 'package:flutter_application_1/models/enums.dart';

// BMR calculated using the Mifflin?St Jeor equation.

double calculateBMR(User user){

  int age = calculateAge(user);

  if(user.gender == GenderType.male){

    return ((10 * user.weight) + (6.25 * user.height) - (5 * age) + 5);

  } else{

    return ((10 * user.weight) + (6.25 * user.height) - (5 * age) - 161);
    
  }
}