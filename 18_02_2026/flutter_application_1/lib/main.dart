import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/CategoryCard.dart';
import 'package:flutter_application_1/widgets/CustomCard.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // backgroundColor: const Color.fromARGB(255, 218, 216, 216),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 15, 64, 77),
          toolbarHeight:60,
          elevation: 0,
          centerTitle: true,
          leading: const SizedBox(width: 48),
          title: const Text(
            "Explore Categories",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
          ),
            actions: const [
              SizedBox(width: 10),
              Icon(Icons.notifications_none, size: 28, color: Color.fromARGB(255, 194, 191, 191),),
              SizedBox(width: 15),
              Icon(Icons.person_outline, size: 28, color: Color.fromARGB(255, 196, 193, 193),),
              SizedBox(width: 10),
            ],
          ),

        body: ListView(
  padding: const EdgeInsets.all(16),
  children: [
                // Buscador
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 50,
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.search, color: Colors.black54),
                            SizedBox(width: 10),
                            Text(
                              "Search Gamers... ",
                              style: TextStyle(color: Colors.black54),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 25),

                const SizedBox(height: 25),

                // Tarjeta principal
                const Customcard(
                  title: 'Ly Shadow',
                  subtitle:
                      'Professional player specializing in strategy and action games.',
                  icon: Icons.person,
                ),

                const SizedBox(height: 30),

                // Segundo buscador
                Container(
                  height: 45,
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Row(
                    children: [
                      Icon(Icons.search, color: Colors.black54),
                      SizedBox(width: 10),
                      Text(
                        "Search Categories...",
                        style: TextStyle(color: Colors.black54),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 30),

                // Categorías
                const CategoryCard(
                  title: "Action Games",
                  description: "Fast-paced, adrenaline-filled games.",
                ),

                const CategoryCard(
                  title: "Adventure Games",
                  description: "Explore open worlds and epic quests.",
                ),

                const CategoryCard(
                  title: "Strategy Games",
                  description: "Plan and master every move.",
                ),
              ],
            ),

        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 1,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Color.fromARGB(255, 15, 64, 77),
          selectedItemColor: const Color.fromARGB(255, 187, 117, 214),
          unselectedItemColor: const Color.fromARGB(221, 211, 211, 211),
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border),
              label: 'Favorites',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
