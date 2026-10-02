import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/test_user.dart';
import 'package:flutter_application_1/models/BMRCalc.dart';
import 'package:flutter_application_1/models/agecalc.dart';
import 'package:flutter_application_1/models/enums.dart';
import 'package:flutter_application_1/models/TDEECalc.dart';
import 'package:flutter_application_1/models/targetMacrosCalc.dart';
import 'package:flutter_application_1/models/macros.dart';

class ProfilPage extends StatefulWidget {
  const ProfilPage({super.key});

  @override
  State<ProfilPage> createState() => _ProfilPageState();
}

class _ProfilPageState extends State<ProfilPage> {

  int navBarIndex = 0;
  final IconAlignment _iconAlignment = .start;



 @override
  Widget build(BuildContext context) {

    final int age = calculateAge(testUser);
    final Macros targetMacros = calculateTargetMacros(testUser);
    final double bmr = calculateBMR(testUser);
    final double tdee = calculateTDEE(bmr, testUser.activity);

      return Scaffold(
          body: ListView(          
            children: [
              const SizedBox(height: 10),
              
              Center(
                child: Container(               
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: 320,
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


                  child: Column(
                    children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("Profil adatok",
                                style: TextStyle(
                                  fontSize: 16,
                                  
                                ),
                            ),
                            
                              OutlinedButton.icon(                             
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.edit,
                                  size: 15,
                                  color: Colors.black,
                                ),
                                label: const Text(
                                  'Szerkesztés',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.black,
                                  ),
                                  ),
                                iconAlignment: _iconAlignment,
                                style: OutlinedButton.styleFrom(
                                    fixedSize: const Size(135, 10),
                                    
                                ),
                              ),
                          ],
                        ),


                      const SizedBox(height: 10),
                      Text("Név",
                            style: TextStyle(
                              fontSize: 16,
                              
                            ),
                        ),
                     
                        Text("${testUser.sureName} ${testUser.firstName}",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                        ),      

                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children: [
                                  Text(
                                        "Nem",
                                          style: TextStyle(
                                            fontSize: 16,
                                          ),
                                      ),
                                      Text(
                                        testUser.gender.displayGenderName,
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                          ),
                                      ),
                                ],
                              ),
                              
                                  Column(
                                    children: [
                                      Text(
                                        "Életkor",
                                          style: TextStyle(
                                            fontSize: 16,
                                          ),
                                      ),
                                      Text(
                                        "${age}${" év"}",
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                          ),
                                      ),
                                    ],
                                  ),
                            ],
                          ),
                        ),

                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        "Testsúly",
                                          style: TextStyle(
                                            fontSize: 16,
                                          ),
                                      ),
                                      Text(
                                        "${testUser.weight}${" kg"}",
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                          ),
                                      ),
                                    ],
                                  ),
                                  
                                  Column(
                                    children: [
                                      Text(
                                        "Magasság",
                                          style: TextStyle(
                                            fontSize: 16,
                                          ),
                                      ),
                                      Text(
                                        "${testUser.height}${" cm"}",
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                          ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children: [
                                  Text(
                                      "Aktivitás",
                                        style: TextStyle(
                                          fontSize: 16,
                                        ),
                                    ),
                                    Text(
                                      testUser.activity.displayActivityName,
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                    ),
                                ],
                              ),
                              
                              Column(
                                children: [
                                  Text(
                                      "Súlyváltozás",
                                        style: TextStyle(
                                          fontSize: 16,
                                        ),
                                    ),
                                    Text(
                                      "${testUser.weeklyWeightChange}${" kg/hét"}",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                    ),
                                ],
                              ),
                            ],
                          ),
                    ]
                    
                  ),
                ),
                
              ),

              //cel
              const SizedBox(height: 10),
              
              Center(
                child: Container(               
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: 40,
                  decoration: BoxDecoration(
                color: const Color.fromARGB(255, 255, 235, 191),
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromARGB(97, 255, 212, 84),
                    blurRadius: 40,
                    spreadRadius: 0,
                  ),
                ],
              ),


              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [   
                                 
                    Text(
                          "Cél",
                          style: TextStyle(
                          fontSize: 16,
                          ),
                        ),
                        Text(
                          testUser.target.displayTargetName,
                          style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold)
                          ),
                        
                  ],
                  
                ),
              ),
                ),
              ),

              const SizedBox(height: 10),
              
              //makro igenyek szamitva

              Center(
                child: Container(               
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: 350,
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


              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(        
                  children: [   
                                 
                    Text(
                          "Alapanyagcsere (BMR)",
                          style: TextStyle(
                          fontSize: 16,
                          ),
                        ),
                        Text(
                          "${bmr.round()}${" kcal"}",
                          style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold)
                          ),


                    Text(
                          "Fenntartó kalória (TDEE)",
                          style: TextStyle(
                          fontSize: 16,
                          ),
                        ),
                        Text(
                          "${tdee.round()}${" kcal"}",
                          style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold)
                          ),

                    Text(
                          "Ajánlott napi kalória",
                          style: TextStyle(
                          fontSize: 16,
                          ),
                        ),
                        Text(
                          "${targetMacros.kcal.round()}${" kcal"}",
                          style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold)
                          ),

                      Text(
                          "Hozzá tartozó makrók",
                          style: TextStyle(
                          fontSize: 16,
                          ),
                        ),                     
                        Text(
                          "Szénhidrátok",
                          style: TextStyle(
                          fontSize: 16,
                          ),
                        ),
                        Text(
                          "${targetMacros.carbs.round()}${" g"}",
                          style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold)
                          ),
                        Text(
                          "Fehérjék",
                          style: TextStyle(
                          fontSize: 16,
                          ),
                        ),
                        Text(
                          "${targetMacros.protein.round()}${" g"}",
                          style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold)
                          ),
                        Text(
                          "Zsírok",
                          style: TextStyle(
                          fontSize: 16,
                          ),
                        ),
                        Text(
                          "${targetMacros.fat.round()}${" g"}",
                          style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold)
                          ),
                        
                  ],
                  
                ),
                
              ),
              
                ),
                
              ),
            ],
          ),

          
          
      );
  }
}