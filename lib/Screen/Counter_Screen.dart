import 'package:cubit_conter_app/cubit/Cubit.dart';
import 'package:cubit_conter_app/cubit/Initial_State.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CounterCubit,InitialState>(
      builder: (context, state) => Scaffold(
        appBar: AppBar(
          title: Text("Counter App"),
          centerTitle: true,
        ),


        body: Center(child: Text("${state.Counter}",style: TextStyle(fontSize: 30),)),

        floatingActionButton: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: FloatingActionButton(onPressed: (){
                  context.read<CounterCubit>().increment();
                },child: Icon(CupertinoIcons.plus),),
              ),
              FloatingActionButton(onPressed: (){
                context.read<CounterCubit>().decrement();
              },child: Icon(CupertinoIcons.minus),)
            ],
          ),
        ),
      ),
    );
  }
}
