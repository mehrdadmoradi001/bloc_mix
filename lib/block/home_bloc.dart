import 'dart:math';

import 'package:flutter/material.dart';
import 'package:block_mix/block/home_event.dart';
import 'package:block_mix/block/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeBloc extends Bloc<HomeEvent,HomeState>{
  int counter = 10;

  HomeBloc():super(HomeInitial(10, Colors.redAccent)){

    //Color
    on<HomeColorChangeEvent>((event, emit) {
      counter = 10;
      emit(HomeRepaintColorState(counter,Color(Random().nextInt(0xffffffff))));
    });

    on<HomeColorResetEvent>((event, emit) {
      Color color = Colors.redAccent;
      counter = 10;
      emit(HomeRepaintColorState(counter,color));
    });

    //Counter
    on<HomeCounterIncrementEvent>((event, emit) {
      emit(HomeUpdateCounterState(++counter,Color(Random().nextInt(0xffffffff))));
    });

    on<HomeCounterDecrementEvent>((event, emit) {
      emit(HomeUpdateCounterState(--counter,Color(Random().nextInt(0xffffffff))));
    });

    on<HomeCounterResetEvent>((event, emit) {
      counter = 10;
      Color color = Colors.redAccent;
      emit(HomeUpdateCounterState(counter ,color));
    });

  }

}

