import 'package:flutter/material.dart';
import 'package:solveit/pages/homepage.dart';
// import 'package:solveit/view/home_view.dart';

class SolveIt extends StatelessWidget {
  const SolveIt({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, title: "SolveIt", home: Homepage());
  }
}
