import 'package:flutter_application_1/models/macros.dart';

class Food{
  String name;
  String category;
  // 100g
  Macros macros;
  double pricePerKg; //Ft/kg
  
  Food({
    required this.name,
    required this.category,
    required this.macros,
    required this.pricePerKg,  
});
}
