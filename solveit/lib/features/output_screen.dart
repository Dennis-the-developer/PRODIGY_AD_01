import 'package:flutter/material.dart';
import 'package:solveit/common/styles/colors.dart';

class OutputScreen extends StatelessWidget {
  const OutputScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Container(
      width: w,
      height: h * 0.29,
      decoration: BoxDecoration(
        color: SelectColor().lightBackground,
      ),
    );
  }
}
