import 'package:flutter_application_1/models/recipe.dart';

class Meal{
  String mealType;
    List<Recipe> recipes;
    
    Meal({
      required this.mealType,
      required this.recipes
    });
}

