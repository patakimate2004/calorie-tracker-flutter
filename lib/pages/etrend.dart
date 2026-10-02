import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/test_recipes.dart';
import 'package:intl/intl.dart';
import 'package:flutter_application_1/models/macros.dart';
import 'package:flutter_application_1/data/test_user.dart';
import 'package:flutter_application_1/models/targetMacrosCalc.dart';
import 'package:flutter_application_1/models/recipe.dart';

class EtrendPage extends StatefulWidget {
  const EtrendPage({super.key});

  @override
  State<EtrendPage> createState() => _EtrendPageState();
}

class _EtrendPageState extends State<EtrendPage> {
  DateTime selectedDate = DateTime.now();

  @override
    Widget build(BuildContext context) {
    //maidatum_bool
    final bool isToday =
        selectedDate.year == DateTime.now().year &&
        selectedDate.month == DateTime.now().month &&
        selectedDate.day == DateTime.now().day;

    final String dayName = DateFormat('EEEE', 'hu').format(selectedDate);
    final String formattedDate = DateFormat(
      'yyyy. MMMM d.',
      'hu',
    ).format(selectedDate);

    final double consumedKcal = 0;
    final double consumedProtein = 0;
    final double consumedFat = 0;
    final double consumedCarbs= 0;
    final Macros targetMacros = calculateTargetMacros(testUser);

    final String recipename = getRecipeName("Pulykamell bulgurral");
    final Recipe recipeData = getRecipeData(recipes, recipename);

    return Scaffold(

      // DATUM CONTAINER
      body: ListView(
        children: [
          const SizedBox(height: 10),

          Center(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: 140,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 40,
                    spreadRadius: 0,
                  ),
                ],
              ),

              child: Padding(
                padding: const EdgeInsets.all(2),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'KIVÁLASZTOTT NAP',
                            style: TextStyle(
                              fontStyle: FontStyle.normal,
                              fontSize: 12,
                            ),
                          ),

                          SizedBox(
                            width: 40,
                            height: 25,
                          child: isToday
                            ? Container(                         
                              decoration: BoxDecoration(
                                color: Colors.orange,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Center(
                                child: Text(
                                  "MA",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            )
                            : null,
                          ),                            
                        ],
                      ),
                    ),

                    const SizedBox(height: 20),

                    Row(
                      children: [
                        SizedBox(
                          width: 70,
                          child: Center(
                            child: IconButton(
                              onPressed: () {
                                setState(() {
                                  selectedDate = selectedDate.subtract(
                                    const Duration(days: 1),
                                  );
                                });
                              },
                              style: IconButton.styleFrom(
                                backgroundColor: const Color(0xFFCFD8DC),
                              ),
                              icon: const Icon(Icons.arrow_left),
                            ),
                          ),
                        ),

                        Expanded(
                          child: Column(
                            children: [
                              Text(
                                dayName.toUpperCase(),
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,                                 
                                  color: isToday ? Colors.orange : Colors.black,
                                ),
                              ),

                              const SizedBox(height: 5),

                              Text(
                                formattedDate,
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),

                        SizedBox(
                          width: 70,
                          child: Center(
                            child: IconButton(
                              onPressed: () {
                                setState(() {
                                  selectedDate = selectedDate.add(
                                    const Duration(days: 1),
                                  );
                                });
                              },
                              style: IconButton.styleFrom(
                                backgroundColor: const Color(0xFFCFD8DC),
                              ),
                              icon: const Icon(Icons.arrow_right),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),

          const SizedBox(height: 10),

          Center(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: 220,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 236, 250, 255),
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 40,
                    spreadRadius: 0,
                  ),
                ],
              ),

              
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    
                    children: [
                      
                      Column(
                        
                        children: [
                          
                          Padding(
                            padding: const EdgeInsets.all(4),
                            child: Column(
                              
                              children: [
                                
                                const Text(
                                  'NAPI MAKRÓK ELFOGYASZTVA',
                                  style: TextStyle(
                                    fontStyle: FontStyle.normal,
                                    fontSize: 12,
                                  ),
                                ),
                          
                                //const SizedBox(height: 5),
                                
                              ],
                            ),
                          ),
                  
                          Column(
                            children: [
                              Text(
                                "Kalória",
                                style: TextStyle(
                                fontSize: 12,
                                ),
                              ),
                              Text(
                                "${consumedKcal.round()}${"/"}${targetMacros.kcal.round()}${" kcal"}",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),              
                                      
                      Column(
                            children: [
                              Text(
                                "Fehérjék",
                                style: TextStyle(
                                fontSize: 12,
                                ),
                              ),
                              Text(
                                "${consumedProtein.round()}${"/"}${targetMacros.protein.round()}${" g"}",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                      ),
                      Column(
                            children: [
                              Text(
                                "Szénhidrátok",
                                style: TextStyle(
                                fontSize: 12,
                                ),
                              ),
                              Text(
                                "${consumedCarbs.round()}${"/"}${targetMacros.carbs.round()}${" g"}",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                      ),
                      Column(
                            children: [
                              Text(
                                "Zsírok",
                                style: TextStyle(
                                fontSize: 12,
                                ),
                              ),
                              Text(
                                "${consumedFat.round()}${"/"}${targetMacros.fat.round()}${" g"}",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                      ),                     
                    ],
                  ),
                ),
              
            ),
          ),

          const SizedBox(height: 10),

          Center(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.9,
                height: 140,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 40,
                      spreadRadius: 0,
                    ),
                  ],
                ),


//receptkiiras
               child: Column(
  children: [
    Text(
      recipename,
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.italic,
      ),
    ),

    ...recipeData.ingredients.map((ingredient) {
      return Text(
        "${ingredient.food.name} - ${ingredient.grams} g",
        style: TextStyle(fontSize: 11),
      );
    }).toList(),
  ],
)

            ),
          ),


        ],
      ),

    );
  }

}
