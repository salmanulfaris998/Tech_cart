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
      theme: Tapptheme.lightTheme,
      darkTheme: Tapptheme.darkTheme,
      themeMode: ThemeMode.system,
    );
  }
}
