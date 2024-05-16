import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {

  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int clikCounter = 0;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("counter screen"),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () {
              setState(() {
                clikCounter= 0;
              });
            },
          ),
        ],
      ),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Text("$clikCounter", style: const TextStyle( fontSize: 160, fontWeight: FontWeight.w100),),
          Text('Clik${clikCounter == 1 ? '': 's'}', style: const TextStyle( fontSize: 25),)
        ],),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
              shape: const StadiumBorder(),
              onPressed: () {
                setState(() {
                  clikCounter++;
                });
              },
              child: const Icon(Icons.plus_one),
            ),
            const SizedBox(height: 10,),
             FloatingActionButton(
              shape: const StadiumBorder(),
              onPressed: () {
                setState(() {
                  // if (clikCounter == 0){
                  //   return clikCounter = 0;
                  // }
                  clikCounter--;
                });
              },
              child: const Icon(Icons.exposure_minus_1),
            ),
        ],
      )
    );
  }
}