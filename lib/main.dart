import 'package:flutter/material.dart';
import 'package:tech_cart/utils/theme/theme.dart';

void main() {
  runApp(const Tcart());
}

class Tcart extends StatefulWidget {
  const Tcart({super.key});

  @override
  State<Tcart> createState() => _TcartState();
}

class _TcartState extends State<Tcart> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Tapptheme.lightTheme, // Light theme
      darkTheme: Tapptheme.darkTheme, // Dark theme
      themeMode: ThemeMode.system, // System theme mode (light/dark)
      home: HomeScreen(), // Navigate to HomeScreen after splash
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: const Center(
        child: Text('Welcome to Tech Cart!'),
      ),
    );
  }
}
