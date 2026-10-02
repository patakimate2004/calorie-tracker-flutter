import 'package:flutter_application_1/models/enums.dart';

double calculateTDEE(double bmr, ActivityLevel activity){
 
    if(activity == ActivityLevel.csekely){
        return bmr * 1.2;
    } else if(activity == ActivityLevel.mersekelt){
        return bmr * 1.375;
    } else if(activity == ActivityLevel.kozepes){
        return bmr * 1.55;
    } else if(activity == ActivityLevel.atlagonFeluli){
        return bmr * 1.725;
    } else {
        return bmr * 1.9;
    }
}