import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Scaffold(
        body: Column(
      children: [
        // Upperpart of calculator screen
        Container(
          decoration: const BoxDecoration(
            color: Colors.blue,
          ),
          width: w,
          height: h * 0.30,
        ),

        // Lowerpart of calculator screen
        Container(
            decoration: const BoxDecoration(
              color: Colors.red,
            ),
            width: w,
            height: h * 0.70,
            child: Column(children: [
              Container(
                width: w,
                height: h * 0.1,
                decoration: const BoxDecoration(
                  color: Colors.green,
                ),
              ),
              Container(),
            ]))
      ],
    ));
  }
}
