import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/etrend.dart';
import 'package:flutter_application_1/pages/profil.dart';

List<Widget> pages = [
  EtrendPage(),
  ProfilPage(),
];

class NavigationPage extends StatefulWidget {
  const NavigationPage({super.key});

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  int navBarIndex = 0;
  
 @override
  Widget build(BuildContext context) {
 
      return Scaffold(

        body: pages[navBarIndex],

        // APPBAR
      appBar: AppBar(
        toolbarHeight: 40.0,
        title: const Text(
          'ÉTKEZÉSI RENDSZER',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.bold,           
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 212, 255, 195),
        elevation: 10,
      ),
      
          bottomNavigationBar: Container(

        decoration: BoxDecoration(
          boxShadow: const [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 20,
                    spreadRadius: 0,
                  ),
                ],
        ),

        child: BottomNavigationBar(
          
          onTap: (index){
              setState(() {
                navBarIndex=index;
              });          
          },
          currentIndex: navBarIndex,    
          
          items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: "Étrend",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.face),
            label: "Profil",
          ),
        
        ]),
      ),

      
      );
  }
}
