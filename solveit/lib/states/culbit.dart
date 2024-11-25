import 'package:flutter_bloc/flutter_bloc.dart';

class CalCubit extends Cubit<List> {
  CalCubit() : super([100, "+", 20]);

  void keyPressed(String key) {
    state.add(key);
    emit(state);
  }
}
