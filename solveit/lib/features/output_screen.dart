import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solveit/states/culbit.dart';

class OutputScreen extends StatelessWidget {
  const OutputScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Container(
      width: w,
      height: h * 0.29,
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.black, width: 0.3),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: BlocBuilder<CalCubit, List>(
          builder: (context, state) {
            debugPrint("OnScreen: ${state.toString()}");
            return Text('$state');
          },
        ),
      ),
    );
  }
}
