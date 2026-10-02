import 'package:flutter_application_1/models/enums.dart';

double calculateTargetKcal(double tdee, TargetLevel target, double weeklyWeightChange){ //napi kaloria cel
    
    double dailyKcalDifference = (weeklyWeightChange * 7700) / 7; //1kg zsir energiatartalma 7700kcal

    if(target == TargetLevel.fogyas){ //fogyas
        return tdee - dailyKcalDifference;
    } else if(target == TargetLevel.szintfentartas){ //szintfentartas
        return tdee;
    } else{     //tomegnoveles
      return tdee + dailyKcalDifference;
    }
}