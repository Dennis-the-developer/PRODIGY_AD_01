import 'package:flutter/material.dart';
import 'package:solveit/common/styles/colors.dart';
import 'package:solveit/features/keypad.dart';
import 'package:solveit/features/output_screen.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(right: 10, left: 10, top: 60),
        color: SelectColor().lightBackground,
        child: const Column(
          children: [
            // Upperpart of calculator screen
            OutputScreen(),
            // Lowerpart of calculator screen
            Keypad()
          ],
        ),
      ),
    );
  }
}
