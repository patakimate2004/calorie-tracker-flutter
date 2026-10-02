import 'package:flutter_application_1/models/food.dart';
import 'package:flutter_application_1/models/macros.dart';

//macros for 100g
List<Food> foods = [
  Food(
    name: "Csirkemell",
    category: "Hús",
    macros: Macros(kcal: 165.0, protein: 31.0, carbs: 0.0, fat: 3.6),
    pricePerKg: 2200.0,
  ),

  Food(
    name: "Csirkecomb",
    category: "Hús",
    macros: Macros(kcal: 177.0, protein: 24.0, carbs: 0.0, fat: 8.0),
    pricePerKg: 1800.0,
  ),

  Food(
    name: "Pulykamell",
    category: "Hús",
    macros: Macros(kcal: 114.0, protein: 24.0, carbs: 0.0, fat: 1.2),
    pricePerKg: 2800.0,
  ),

  Food(
    name: "Marhahús",
    category: "Hús",
    macros: Macros(kcal: 217.0, protein: 26.0, carbs: 0.0, fat: 12.0),
    pricePerKg: 4800.0,
  ),

  Food(
    name: "Tojás",
    category: "Tojás",
    macros: Macros(kcal: 143.0, protein: 13.0, carbs: 1.1, fat: 10.0),
    pricePerKg: 1400.0,
  ),

  Food(
    name: "Rizs",
    category: "Köret",
    macros: Macros(kcal: 360.0, protein: 7.0, carbs: 79.0, fat: 0.7),
    pricePerKg: 900.0,
  ),

  Food(
    name: "Barna rizs",
    category: "Köret",
    macros: Macros(kcal: 362.0, protein: 7.5, carbs: 76.0, fat: 2.7),
    pricePerKg: 1300.0,
  ),

  Food(
    name: "Bulgur",
    category: "Köret",
    macros: Macros(kcal: 342.0, protein: 12.0, carbs: 76.0, fat: 1.3),
    pricePerKg: 1800.0,
  ),

  Food(
    name: "Zabpehely",
    category: "Gabona",
    macros: Macros(kcal: 389.0, protein: 17.0, carbs: 66.0, fat: 7.0),
    pricePerKg: 1300.0,
  ),

  Food(
    name: "Teljes kiőrlésű kenyér",
    category: "Pékáru",
    macros: Macros(kcal: 247.0, protein: 13.0, carbs: 41.0, fat: 4.2),
    pricePerKg: 1800.0,
  ),

  Food(
    name: "Banán",
    category: "Gyümölcs",
    macros: Macros(kcal: 89.0, protein: 1.1, carbs: 23.0, fat: 0.3),
    pricePerKg: 900.0,
  ),

  Food(
    name: "Alma",
    category: "Gyümölcs",
    macros: Macros(kcal: 52.0, protein: 0.3, carbs: 14.0, fat: 0.2),
    pricePerKg: 800.0,
  ),

  Food(
    name: "Brokkoli",
    category: "Zöldség",
    macros: Macros(kcal: 34.0, protein: 2.8, carbs: 7.0, fat: 0.4),
    pricePerKg: 1600.0,
  ),

  Food(
    name: "Paradicsom",
    category: "Zöldség",
    macros: Macros(kcal: 18.0, protein: 0.9, carbs: 3.9, fat: 0.2),
    pricePerKg: 1200.0,
  ),

  Food(
    name: "Uborka",
    category: "Zöldség",
    macros: Macros(kcal: 15.0, protein: 0.7, carbs: 3.6, fat: 0.1),
    pricePerKg: 900.0,
  ),

  Food(
    name: "Paprika",
    category: "Zöldség",
    macros: Macros(kcal: 31.0, protein: 1.0, carbs: 6.0, fat: 0.3),
    pricePerKg: 1800.0,
  ),

  Food(
    name: "Olívaolaj",
    category: "Olaj",
    macros: Macros(kcal: 884.0, protein: 0.0, carbs: 0.0, fat: 100.0),
    pricePerKg: 5000.0,
  ),

  Food(
    name: "Görög joghurt (2%)",
    category: "Tejtermék",
    macros: Macros(kcal: 73.0, protein: 10.0, carbs: 3.6, fat: 2.0),
    pricePerKg: 2200.0,
  ),

  Food(
    name: "Túró (sovány)",
    category: "Tejtermék",
    macros: Macros(kcal: 99.0, protein: 18.0, carbs: 3.4, fat: 0.5),
    pricePerKg: 2600.0,
  ),

  Food(
    name: "Trappista sajt",
    category: "Tejtermék",
    macros: Macros(kcal: 356.0, protein: 26.0, carbs: 2.0, fat: 28.0),
    pricePerKg: 3500.0,
  ),
];

Food getFoodByName(String name) {
  return foods.firstWhere(
    (food) => food.name == name,
    orElse: () => throw Exception('Food not found: $name'),
  );
}