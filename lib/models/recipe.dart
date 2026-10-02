import 'package:flutter_application_1/models/recipeingredient.dart';

class Recipe {
    String name;
    List<RecipeIngredient> ingredients;
    String tutorial;
    int portion;

    Recipe({
      required this.name,
      required this.ingredients,
      required this.tutorial,
      required this.portion
    });
}