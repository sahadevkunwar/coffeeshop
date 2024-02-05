import 'package:coffeeshop/screens/dash_board.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MainApp());

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: const Color(0xffc67c4e),
      ),
      debugShowCheckedModeBanner: false,
      home: const DashBoard(),
    );
  }
}
