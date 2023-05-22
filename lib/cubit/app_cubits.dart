import 'package:bloc/bloc.dart';
import 'package:khelonawala/cubit/app_cubit_states.dart';

class AppCubits extends Cubit<CubitStates> {
  AppCubits(initialState) : super(InitialState()) {
    emit(WelcomeState());
  }
}
