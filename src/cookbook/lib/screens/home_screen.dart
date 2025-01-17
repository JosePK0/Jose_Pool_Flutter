import 'package:flutter/material.dart';
import 'design/design_screen.dart';
import 'forms/forms_screen.dart';
import 'images/images_screen.dart';
import 'lists/lists_screen.dart';
import 'navigation/navigation_screen.dart';
import 'first_app_screen.dart'; // Importa la nueva actividad

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Cookbook - Jose Pool'),
        centerTitle: true,
        backgroundColor: Colors.indigo,
      ),
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.indigo, Colors.blue],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: ListView(
          padding: const EdgeInsets.all(16.0),
          children: [
            const Text(
              'Section',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 24),
            _buildCustomCard(
              context,
              title: 'Design',
              icon: Icons.brush,
              color: Colors.teal,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const DesignScreen()),
                );
              },
            ),
            _buildCustomCard(
              context,
              title: 'Forms',
              icon: Icons.note_alt,
              color: Colors.orange,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const FormsScreen()),
                );
              },
            ),
            _buildCustomCard(
              context,
              title: 'Images',
              icon: Icons.photo,
              color: Colors.purple,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ImagesScreen()),
                );
              },
            ),
            _buildCustomCard(
              context,
              title: 'Lists',
              icon: Icons.format_list_bulleted,
              color: Colors.red,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ListsScreen()),
                );
              },
            ),
            _buildCustomCard(
              context,
              title: 'Navigation',
              icon: Icons.directions,
              color: Colors.green,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const NavigationScreen()),
                );
              },
            ),
            _buildCustomCard(
              context,
              title: 'First App',
              icon: Icons.star,
              color: Colors.cyan,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const FirstAppScreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCustomCard(
    BuildContext context, {
    required String title,
    required IconData icon,
    required Color color,
    required VoidCallback onPressed,
  }) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: GestureDetector(
        onTap: onPressed,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
          elevation: 6.0,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: color,
                  child: Icon(icon, size: 32, color: Colors.white),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Text(
                    title,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Icon(Icons.arrow_forward_ios, color: Colors.grey),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
