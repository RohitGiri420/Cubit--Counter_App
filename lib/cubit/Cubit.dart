import 'package:cubit_conter_app/cubit/Initial_State.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<InitialState>{

  CounterCubit():super(InitialState(Counter: 0));

  increment(){
    emit(InitialState(Counter:state.Counter+1));
  }
  decrement(){
    emit(InitialState(Counter: state.Counter-1));
  }

}
