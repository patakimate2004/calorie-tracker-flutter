import 'package:flutter_application_1/models/meal.dart';
import 'package:flutter_application_1/models/macros.dart';

class Day{
      DateTime date;
      List<Meal> meals;
      Macros consumedMacros;

      Day({
        required this.date,
        required this.meals,
        required this.consumedMacros
      });
}