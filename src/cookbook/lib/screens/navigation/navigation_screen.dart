import 'package:flutter/material.dart';

class NavigationScreen extends StatelessWidget {
  const NavigationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 8, // Número de actividades
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Navigation Examples'),
          bottom: const TabBar(
            isScrollable: true,
            tabs: [
              Tab(text: 'Animate Widget'),
              Tab(text: 'Navigate Back'),
              Tab(text: 'Named Routes'),
              Tab(text: 'Pass Arguments'),
              Tab(text: 'App Links Android'),
              Tab(text: 'Universal Links iOS'),
              Tab(text: 'Return Data'),
              Tab(text: 'Send Data'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            AnimateWidgetAcrossScreensExample(),
            NavigateToNewScreenAndBackExample(),
            NavigateWithNamedRoutesExample(),
            PassArgumentsToNamedRouteExample(),
            AppLinksAndroidExample(),
            UniversalLinksIOSExample(),
            ReturnDataFromScreenExample(),
            SendDataToNewScreenExample(),
          ],
        ),
      ),
    );
  }
}


class AnimateWidgetAcrossScreensExample extends StatelessWidget {
  const AnimateWidgetAcrossScreensExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            PageRouteBuilder(
              pageBuilder: (context, animation, secondaryAnimation) =>
                  const SecondScreen(),
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                const begin = Offset(1.0, 0.0);
                const end = Offset.zero;
                const curve = Curves.easeInOut;

                var tween = Tween(begin: begin, end: end)
                    .chain(CurveTween(curve: curve));
                var offsetAnimation = animation.drive(tween);

                return SlideTransition(
                  position: offsetAnimation,
                  child: child,
                );
              },
            ),
          );
        },
        child: const Text('Animate to Screen'),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Second Screen')),
      body: const Center(
        child: Text('This is the second screen!'),
      ),
    );
  }
}


class NavigateToNewScreenAndBackExample extends StatelessWidget {
  const NavigateToNewScreenAndBackExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const SecondScreen()),
          );
        },
        child: const Text('Navigate to New Screen'),
      ),
    );
  }
}


class NavigateWithNamedRoutesExample extends StatelessWidget {
  const NavigateWithNamedRoutesExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, '/second');
        },
        child: const Text('Navigate with Named Route'),
      ),
    );
  }
}


class PassArgumentsToNamedRouteExample extends StatelessWidget {
  const PassArgumentsToNamedRouteExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(
            context,
            '/second',
            arguments: 'Hello from First Screen!',
          );
        },
        child: const Text('Pass Arguments to Named Route'),
      ),
    );
  }
}


class AppLinksAndroidExample extends StatelessWidget {
  const AppLinksAndroidExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'App Links for Android example not implemented yet.',
        textAlign: TextAlign.center,
      ),
    );
  }
}


class UniversalLinksIOSExample extends StatelessWidget {
  const UniversalLinksIOSExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Universal Links for iOS example not implemented yet.',
        textAlign: TextAlign.center,
      ),
    );
  }
}


class ReturnDataFromScreenExample extends StatelessWidget {
  const ReturnDataFromScreenExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () async {
          final result = await Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const SecondScreen()),
          );
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Returned data: $result')),
          );
        },
        child: const Text('Return Data from Screen'),
      ),
    );
  }
}


class SendDataToNewScreenExample extends StatelessWidget {
  const SendDataToNewScreenExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const SecondScreen(),
              settings: const RouteSettings(arguments: 'Data from First Screen'),
            ),
          );
        },
        child: const Text('Send Data to New Screen'),
      ),
    );
  }
}
