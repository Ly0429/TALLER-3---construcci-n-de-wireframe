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
          toolbarHeight: 20,
          elevation: 0,
          backgroundColor: const Color.fromARGB(255, 15, 64, 77),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                        child: const Row(
                          children: [
                            Icon(Icons.search, color: Colors.black54),
                            SizedBox(width: 10),
                            Text(
                              "Search...",
                              style: TextStyle(color: Colors.black54),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 15),
                    const Icon(Icons.notifications_none, size: 28),
                    const SizedBox(width: 15),
                    const Icon(Icons.person_outline, size: 28),
                  ],
                ),

                const SizedBox(height: 25),

                // Título
                const Center(
                  child: Text(
                    "Explore Categories",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),

                const SizedBox(height: 25),

                // Tarjeta principal
                const Customcard(
                  title: 'Ly Shadow',
                  subtitle:
                      'Jugadora profesional especializada en juegos de estrategia y acción.',
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
                        "Search categories...",
                        style: TextStyle(color: Colors.black54),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 30),

                // Categorías
                const CategoryCard(
                  title: "Juegos de Acción",
                  description: "Juegos rápidos llenos de adrenalina.",
                ),

                const CategoryCard(
                  title: "Juegos de Aventura",
                  description: "Explora mundos abiertos y misiones épicas.",
                ),

                const CategoryCard(
                  title: "Juegos de Estrategia",
                  description: "Planifica y domina cada movimiento.",
                ),
              ],
            ),
          ),
        ),

        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 1,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Color.fromARGB(255, 15, 64, 77),
          selectedItemColor: const Color.fromARGB(255, 187, 117, 214), 
          unselectedItemColor: Colors.black87,
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
