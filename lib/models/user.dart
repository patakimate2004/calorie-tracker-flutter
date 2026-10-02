import 'package:flutter_application_1/models/macros.dart';
import 'package:flutter_application_1/models/enums.dart';

class User {
    String firstName;
    String sureName;
    String? email;
    GenderType gender;
    DateTime birthDate;     //birthDate-DateTime.now() = ?letkor -> 10-100?v k?z?tti sz?m
    double weight;          //kg
    int height;             //cm
    ActivityLevel activity; //csek?ly, m?rs?kelt, k?zepes, ?tlagon fel?li, nagyon magas
    int? budgetPerDay;
    int? preferredMealNumber;

    //daily target macros, code calculates them
    Macros? targetMacros;

    TargetLevel target; //1-fogyas, 2-szintfentartas, 3-tomegnoveles
    double? goalWeight;
    double weeklyWeightChange; //x kg/week, code advices calories compared to this (positive number)

    List<String>? allergies;
    List<String>? notWantedFoods;

    User({
      required this.firstName,
      required this.sureName,
      this.email,
      required this.gender,
      required this.birthDate,
      required this.weight,
      required this.height,
      required this.activity,
      this.budgetPerDay,
      this.preferredMealNumber,
      this.targetMacros,
      required this.target,
      this.goalWeight,
      required this.weeklyWeightChange,
      this.allergies,
      this.notWantedFoods,
    });
}