import 'package:flutter/material.dart';
import 'package:solveit/screens/homepage.dart';

class SolveIt extends StatelessWidget {
  const SolveIt({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "SolveIt",
      home: HomePage()
    );
  }
}