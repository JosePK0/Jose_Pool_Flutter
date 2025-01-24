import 'package:flutter/material.dart';
class EffectsScreen extends StatelessWidget {
  const EffectsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Effects'),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          _buildCustomButton(
            context,
            title: 'Download Button',
            icon: Icons.download,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DownloadButtonExample(),
                ),
              );
            },
          ),
          _buildCustomButton(
            context,
            title: 'Nested Navigation Flow',
            icon: Icons.navigation,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const NestedNavigationExample(),
                ),
              );
            },
          ),
          _buildCustomButton(
            context,
            title: 'Shimmer Loading Effect',
            icon: Icons.blur_on,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ShimmerEffectExample(),
                ),
              );
            },
          ),
          _buildCustomButton(
            context,
            title: 'Staggered Menu Animation',
            icon: Icons.menu,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const StaggeredMenuExample(),
                ),
              );
            },
          ),
          _buildCustomButton(
            context,
            title: 'Typing Indicator',
            icon: Icons.message,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const TypingIndicatorExample(),
                ),
              );
            },
          ),
          _buildCustomButton(
            context,
            title: 'Expandable FAB',
            icon: Icons.add_circle_outline,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ExpandableFabExample(),
                ),
              );
            },
          ),
          _buildCustomButton(
            context,
            title: 'Gradient Chat Bubbles',
            icon: Icons.chat_bubble,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const GradientChatBubblesExample(),
                ),
              );
            },
          ),
          _buildCustomButton(
            context,
            title: 'Drag UI Element',
            icon: Icons.touch_app,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DragUIElementExample(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildCustomButton(
    BuildContext context, {
    required String title,
    required IconData icon,
    required VoidCallback onPressed,
  }) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: ElevatedButton.icon(
        icon: Icon(icon, size: 24.0),
        label: Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 20.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24.0),
          ),
          backgroundColor: Colors.deepPurpleAccent,
          shadowColor: Colors.deepPurple,
          elevation: 8.0,
        ),
        onPressed: onPressed,
      ),
    );
  }
}
// Download Button Example
class DownloadButtonExample extends StatelessWidget {
  const DownloadButtonExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Download Button')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Simulate download
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Downloading...')),
            );
          },
          child: const Text('Download'),
        ),
      ),
    );
  }
}

// Nested Navigation Example
class NestedNavigationExample extends StatelessWidget {
  const NestedNavigationExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Nested Navigation')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SecondPage()),
            );
          },
          child: const Text('Go to Second Page'),
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Second Page')),
      body: Center(
        child: ElevatedButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Go Back'),
        ),
      ),
    );
  }
}

// Shimmer Effect Example
class ShimmerEffectExample extends StatelessWidget {
  const ShimmerEffectExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Shimmer Effect')),
      body: const Center(
        child: Text('Shimmer Effect Placeholder'),
      ),
    );
  }
}

// Staggered Menu Example
class StaggeredMenuExample extends StatelessWidget {
  const StaggeredMenuExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Staggered Menu Animation')),
      body: const Center(child: Text('Staggered Menu Animation Placeholder')),
    );
  }
}

// Typing Indicator Example
class TypingIndicatorExample extends StatelessWidget {
  const TypingIndicatorExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Typing Indicator')),
      body: const Center(child: Text('Typing Indicator Placeholder')),
    );
  }
}

// Expandable FAB Example
class ExpandableFabExample extends StatelessWidget {
  const ExpandableFabExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Expandable FAB')),
      body: const Center(child: Text('Expandable FAB Placeholder')),
    );
  }
}

// Gradient Chat Bubbles Example
class GradientChatBubblesExample extends StatelessWidget {
  const GradientChatBubblesExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Gradient Chat Bubbles')),
      body: const Center(child: Text('Gradient Chat Bubbles Placeholder')),
    );
  }
}

// Drag UI Element Example
class DragUIElementExample extends StatelessWidget {
  const DragUIElementExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Drag UI Element')),
      body: const Center(child: Text('Drag UI Element Placeholder')),
    );
  }
}
