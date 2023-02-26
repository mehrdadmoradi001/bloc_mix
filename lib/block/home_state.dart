import 'package:flutter/material.dart';
abstract class HomeState {}

class HomeInitial extends HomeState{
  int counter;
  final Color color;

  HomeInitial(this.counter,this.color);
}

class HomeUpdateCounterState extends HomeState{
  int counter;
  final Color color;
  HomeUpdateCounterState(this.counter,this.color);
}

class HomeRepaintColorState extends HomeState{
  Color color;
  int counter;
  HomeRepaintColorState(this.counter,this.color);
}