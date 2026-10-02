import 'package:flutter_application_1/models/macros.dart';
import 'package:flutter_application_1/models/targetKcalCalc.dart';
import 'package:flutter_application_1/models/user.dart';
import 'package:flutter_application_1/models/BMRCalc.dart';
import 'package:flutter_application_1/models/TDEECalc.dart';
import 'package:flutter_application_1/models/enums.dart';

Macros calculateTargetMacros(User user) {
  double targetProtein;
  double targetFat;
  double targetCarbs;

  if (user.target == TargetLevel.fogyas) {
    //fogyas feherje 2g/kg

    targetProtein = user.weight * 2;
  } else if (user.target == TargetLevel.szintfentartas) {
    //szintfentartas

    targetProtein = user.weight * 1.6;
  } else {
    //tomegnoveles

    targetProtein = user.weight * 1.8;
  }

  targetFat = user.weight * 0.8; //zsir altalaban 0.8g/kg

  //maradek kaloriabol kijon a szenhidrat

  double targetKcal = calculateTargetKcal(
    calculateTDEE(calculateBMR(user), user.activity),
    user.target,
    user.weeklyWeightChange,
  );

  double proteinkcal = targetProtein * 4; //1g feherje 4kcal
  double fatkcal = targetFat * 9; //1g zsir 9kcal

  double maradek = targetKcal - proteinkcal - fatkcal;

  targetCarbs = maradek / 4; //1g szenhidrat 4kcal

  return Macros(
    kcal: targetKcal,
    protein: targetProtein,
    carbs: targetCarbs,
    fat: targetFat,
  );
}
