import 'package:flutter_bloc/flutter_bloc.dart';
import 'counter_state.dart';

class CubitCounter extends Cubit<CounterState> {
  // So if you notice here that we did a class called CounterState and we took the variable of it so we can
  // As Cubit takes dynamic we need to define which state we should use
  CubitCounter() : super(CounterAIncrementState());
  int teamAPoints = 0;
  int teamBPoints = 0;

  void TeamIncrement({required String team, required int buttonNumber}) {
    if (team == 'A') {
      teamAPoints += buttonNumber;
      emit(CounterAIncrementState());
    } else if (team == 'B') {
      teamBPoints += buttonNumber;
      emit(CounterBIncrementState());
    }
  }
}
