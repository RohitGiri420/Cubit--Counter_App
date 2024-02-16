import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter App"),
        centerTitle: true,
      ),


      body: Center(child: Text("0",style: TextStyle(fontSize: 30),)),

      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: FloatingActionButton(onPressed: (){},child: Icon(CupertinoIcons.plus),),
            ),
            FloatingActionButton(onPressed: (){},child: Icon(CupertinoIcons.minus),)
          ],
        ),
      ),
    );
  }
}
