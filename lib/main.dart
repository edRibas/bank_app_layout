import 'package:bank_layout/screens/homepage.dart';
import 'package:bank_layout/themes/my_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const FlutterBank());
}

class FlutterBank extends StatelessWidget {
  const FlutterBank({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FlutterBank',
      theme: myTheme,
      home: const HomePage(),
    );
  }
}
