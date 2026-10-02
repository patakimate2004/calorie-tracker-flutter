import 'package:flutter_application_1/models/recipe.dart';
import 'package:flutter_application_1/models/recipeingredient.dart';
import 'package:flutter_application_1/data/test_food.dart';
import 'package:flutter_application_1/models/food.dart';
import 'package:flutter_application_1/models/macros.dart';

List<Recipe> recipes = [
  Recipe(
    name: "Csirkés rizs",
    ingredients: [
      RecipeIngredient(food: getFoodByName("Csirkemell"), grams: 200),
      RecipeIngredient(food: getFoodByName("Rizs"), grams: 150),
      RecipeIngredient(food: getFoodByName("Olívaolaj"), grams: 10),
    ],
    tutorial:
        "A csirkemellet fűszerezd, süsd meg kevés olívaolajon. A rizst főzd meg, majd tálald együtt.",
    portion: 1,
  ),

  Recipe(
    name: "Zabkása banánnal",
    ingredients: [
      RecipeIngredient(food: getFoodByName("Zabpehely"), grams: 80),
      RecipeIngredient(food: getFoodByName("Banán"), grams: 120),
      RecipeIngredient(food: getFoodByName("Görög joghurt (2%)"), grams: 200),
    ],
    tutorial:
        "Keverd össze a zabpelyhet a joghurttal, majd szeleteld rá a banánt.",
    portion: 1,
  ),

  Recipe(
    name: "Rántotta sajttal",
    ingredients: [
      RecipeIngredient(food: getFoodByName("Tojás"), grams: 180),
      RecipeIngredient(food: getFoodByName("Trappista sajt"), grams: 30),
    ],
    tutorial:
        "Verd fel a tojásokat, add hozzá a sajtot, majd süsd készre.",
    portion: 1,
  ),

  Recipe(
    name: "Görög joghurt gyümölccsel",
    ingredients: [
      RecipeIngredient(food: getFoodByName("Görög joghurt (2%)"), grams: 250),
      RecipeIngredient(food: getFoodByName("Banán"), grams: 100),
      RecipeIngredient(food: getFoodByName("Alma"), grams: 100),
    ],
    tutorial:
        "Keverd össze a hozzávalókat egy tálban.",
    portion: 1,
  ),

  Recipe(
    name: "Pulykamell bulgurral",
    ingredients: [
      RecipeIngredient(food: getFoodByName("Pulykamell"), grams: 200),
      RecipeIngredient(food: getFoodByName("Bulgur"), grams: 120),
      RecipeIngredient(food: getFoodByName("Brokkoli"), grams: 150),
    ],
    tutorial:
        "A pulykamellet süsd meg, a bulgurt főzd meg, a brokkolit párold.",
    portion: 1,
  ),

  Recipe(
    name: "Marhahús barna rizzsel",
    ingredients: [
      RecipeIngredient(food: getFoodByName("Marhahús"), grams: 200),
      RecipeIngredient(food: getFoodByName("Barna rizs"), grams: 150),
      RecipeIngredient(food: getFoodByName("Paradicsom"), grams: 100),
    ],
    tutorial:
        "Süsd meg a marhahúst, főzd meg a barna rizst, friss paradicsommal tálald.",
    portion: 1,
  ),

  Recipe(
    name: "Túró banánnal",
    ingredients: [
      RecipeIngredient(food: getFoodByName("Túró (sovány)"), grams: 250),
      RecipeIngredient(food: getFoodByName("Banán"), grams: 120),
    ],
    tutorial:
        "Keverd össze a túrót a felkarikázott banánnal.",
    portion: 1,
  ),

  Recipe(
    name: "Csirkesaláta",
    ingredients: [
      RecipeIngredient(food: getFoodByName("Csirkemell"), grams: 180),
      RecipeIngredient(food: getFoodByName("Paradicsom"), grams: 120),
      RecipeIngredient(food: getFoodByName("Uborka"), grams: 120),
      RecipeIngredient(food: getFoodByName("Paprika"), grams: 80),
    ],
    tutorial:
        "Süsd meg a csirkemellet, szeleteld fel a zöldségeket, majd keverd össze.",
    portion: 1,
  ),
];

String getRecipeName(String recipename){

    int index = 0;

    for (var i = 0; i < recipes.length; i++) {
        if(recipes[i].name == recipename){
            index = i;
        }
    }

    return recipes[index].name;
}

Recipe getRecipeData(List<Recipe> recipes, String recipename){

      int index = 0;

      for (var i = 0; i < recipes.length; i++) {
            if(recipes[i].name == recipename){
                index = i;
            }
      }

      return Recipe(name: recipes[index].name, ingredients: recipes[index].ingredients, tutorial: recipes[index].tutorial, portion: recipes[index].portion);

}

/*Macros calculcateRecipeMacros(List<Recipe> recipes){

    for (var i = 0; i < recipes[i].ingredients.length; i++) {
        
    }

}
*/