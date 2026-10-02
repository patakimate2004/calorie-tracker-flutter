import 'package:flutter_application_1/models/food.dart';
import 'package:flutter_application_1/models/macros.dart';

class RecipeIngredient {
    Food food;
    double grams;

    RecipeIngredient({
      required this.food,
      required this.grams,
    });
}

Macros calculateIngredientMacros(Food food, double grams){
    
      double kcal = food.macros.kcal / 100 * grams;
      double protein = food.macros.protein / 100 * grams;
      double carbs = food.macros.carbs / 100 * grams;
      double fat = food.macros.fat / 100 * grams;

      return Macros(kcal: kcal, protein: protein, carbs: carbs, fat: fat);

}