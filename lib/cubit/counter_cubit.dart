import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_project3/cubit/counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterState());
  int teamAPoints = 0;
  int teamBPoints = 0;

  void teamsCounter({required String team, required int buttonNumber}) {
    if (team == 'A') {
      teamAPoints += buttonNumber;
      emit(CounterAState());
    } else if (team == 'B') {
      teamBPoints += buttonNumber;
      emit(CounterBState());
    } else {
      teamAPoints = 0;
      teamBPoints = 0;
      emit(CounterReset());
    }
  }
}
