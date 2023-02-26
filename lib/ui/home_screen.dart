import 'package:block_mix/block/home_bloc.dart';
import 'package:block_mix/block/home_event.dart';
import 'package:block_mix/block/home_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(
        child: Center(
          child: Stack(
            children: [
              BlocBuilder<HomeBloc, HomeState>(
                builder: (context, state) {
                  if (state is HomeInitial) {
                    return getInitial(state.counter, state.color);
                  }
                  if(state is HomeUpdateCounterState){
                    return getInitial(state.counter, state.color);
                  }
                  if(state is HomeUpdateCounterState){
                    return getInitial(state.counter, state.color);
                  }
                  if(state is HomeUpdateCounterState){
                    return getInitial(state.counter, state.color);
                  }
                  if(state is HomeRepaintColorState){
                    return getInitial(state.counter, state.color);
                  }
                  return Container(
                    color: Colors.white,
                  );
                },
              ),
              Positioned(
                bottom: 400,
                left: 166,
                child: ElevatedButton(
                  onPressed: () {
                    context.read<HomeBloc>().add(HomeCounterDecrementEvent());
                  },
                  child: Text(
                    '-',
                    style: TextStyle(fontSize: 24),
                  ),
                ),
              ),
              Positioned(
                bottom: 340,
                left: 166,
                child: ElevatedButton(
                  onPressed: () {
                    context.read<HomeBloc>().add(HomeCounterIncrementEvent());
                  },
                  child: Text(
                    '+',
                    style: TextStyle(fontSize: 24),
                  ),
                ),
              ),
              Positioned(
                bottom: 270,
                left: 153,
                child: ElevatedButton(
                  onPressed: () {
                    context.read<HomeBloc>().add(HomeColorChangeEvent());
                  },
                  child: Text(
                    'COLOR',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
              Positioned(
                bottom: 200,
                left: 64,
                child: ElevatedButton(
                  onPressed: () {
                    context.read<HomeBloc>().add(HomeColorResetEvent());
                  },
                  child: Text(
                    'Reset Color',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
              Positioned(
                bottom: 200,
                left: 200,
                child: ElevatedButton(
                  onPressed: () {
                    context.read<HomeBloc>().add(HomeCounterResetEvent());
                  },
                  child: Text(
                    'Reset Counter',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

getInitial(int? int, Color? color) {
  return Stack(
    children: [
      Container(
        color: color,
      ),
      Positioned(
        top: 200,
        left: 160,
        child: Text(
          '$int',
          style: TextStyle(fontSize: 60,color: Colors.white),
        ),
      ),
    ],
  );
}
